#include <sys/stat.h>
#include <sys/types.h>
#include <dirent.h>
#include <fcntl.h>
#include <cstdlib>
#include <iostream>
#include <fstream>
#include <stdio.h>
#include <unistd.h>
#include <malloc.h>

#include "test.h"

int remove_directory(const char *path) {
   DIR *d = opendir(path);
   size_t path_len = strlen(path);
   int r = -1;

   if (d) {
      struct dirent *p;

      r = 0;
      while (!r && (p=readdir(d))) {
          int r2 = -1;
          char *buf;
          size_t len;

          /* Skip the names "." and ".." as we don't want to recurse on them. */
          if (!strcmp(p->d_name, ".") || !strcmp(p->d_name, ".."))
             continue;

          len = path_len + strlen(p->d_name) + 2; 
          buf = (char*)malloc(len);

          if (buf) {
             struct stat statbuf;

             snprintf(buf, len, "%s/%s", path, p->d_name);
             if (!stat(buf, &statbuf)) {
                if (S_ISDIR(statbuf.st_mode))
                   r2 = remove_directory(buf);
                else
                   r2 = unlink(buf);
             }
             free(buf);
          }
          r = r2;
      }
      closedir(d);
   }

   if (!r)
      r = rmdir(path);

   return r;
}

std::string getCmdResult(const std::string &strCmd)
{
	char buf[10240] = {0};
	FILE *pf = NULL;
	
	if( (pf = popen(strCmd.c_str(), "r")) == NULL )
	{
		return "";
	}
 
	std::string strResult;
	while(fgets(buf, sizeof buf, pf))
	{
		strResult += buf;
	}
	
	pclose(pf);
 
	unsigned int iSize = strResult.size();
	if(iSize > 0 && strResult[iSize - 1] == '\n')  // linux
	{
		strResult = strResult.substr(0, iSize - 1);
	}
 
	return strResult;
}

void test::GetTracerCpp(const HttpRequestPtr &req,
                                std::function<void(const HttpResponsePtr&)>&&callback)
{
  int systemRet;
  std::ifstream ifs;
  Json::Value root;
  JSONCPP_STRING errs;
  Json::CharReaderBuilder builder;
  std::string bodyResp;

  std::string tmpDir = getCmdResult("cat /proc/sys/kernel/random/uuid");
  std::string folderPath = "/home/runner/tmp/" + tmpDir;
  std::string visualizationPath = folderPath + "/visualization.json";
  std::string runCmd = "cd " + folderPath + " && cp ~/app/main.cpp . && g++ main.cpp -o a.out -O2 -std=c++11 -lcurl -B /home/runner/var/empty/local && ALGORITHM_VISUALIZER=1 ./a.out";

  builder["collectComments"] = false;

  systemRet = mkdir(folderPath.c_str(), S_IRWXU);
  if(systemRet == -1){
    bodyResp = "mkdir failed";
    auto resp = HttpResponse::newHttpJsonResponse(bodyResp);
    resp->setBody(bodyResp);
    resp->setStatusCode(k400BadRequest);
    callback(resp);
    return;
  }

  systemRet = system(runCmd.c_str());
  if(systemRet == -1){
    bodyResp = "run failed";
    auto resp = HttpResponse::newHttpJsonResponse(bodyResp);
    resp->setBody(bodyResp);
    resp->setStatusCode(k400BadRequest);
    callback(resp);
    return;
  }
  
  ifs.open(visualizationPath.c_str(),std::ios::in);
  if (!ifs.is_open()) {
    bodyResp = "read failed";
    auto resp = HttpResponse::newHttpJsonResponse(bodyResp);
    resp->setBody(bodyResp);
    resp->setStatusCode(k400BadRequest);
    callback(resp);
    return;
  }
  if (!parseFromStream(builder, ifs, &root, &errs)){
    bodyResp = "ERROR PARSING";
    auto resp = HttpResponse::newHttpJsonResponse(bodyResp);
    resp->setBody(bodyResp);
    resp->setStatusCode(k400BadRequest);
    callback(resp);
  }

  ifs.close();

  systemRet = remove_directory(folderPath.c_str());
  if(systemRet == -1){
    bodyResp = "rm failed";
    auto resp = HttpResponse::newHttpJsonResponse(bodyResp);
    resp->setBody(bodyResp);
    resp->setStatusCode(k400BadRequest);
    callback(resp);
    return;
  }
  auto resp = HttpResponse::newHttpJsonResponse(root);
  resp->setStatusCode(k200OK);
  callback(resp);
}
