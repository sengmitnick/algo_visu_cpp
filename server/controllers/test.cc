#include <cstdlib>
#include <iostream>
#include <fstream>

#include "test.h"

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
 
	unsigned int iSize =  strResult.size();
	if(iSize > 0 && strResult[iSize - 1] == '\n')  // linux
	{
		strResult = strResult.substr(0, iSize - 1);
	}
 
	return strResult;
}

void test::GetTracerCpp(const HttpRequestPtr &req,
                                std::function<void(const HttpResponsePtr&)>&&callback)
{
  std::ifstream ifs;
  Json::Value root;
  JSONCPP_STRING errs;
  Json::CharReaderBuilder builder;
  std::string bodyResp;

  builder["collectComments"] = false;

  std::string tmpDir = getCmdResult("cat /proc/sys/kernel/random/uuid");
  std::string runCmd = "mkdir -p ~/app/tmp/ "+ tmpDir + " && cd " + tmpDir + " && g++ ~/app/algorithm.cpp -o ~/app/algorithm.out -O2 -std=c++11 -lcurl -B /home/runner/var/empty/local";

  std::cout << runCmd << std::endl;

  int systemRet = system("g++ ~/app/algorithm.cpp -o ~/app/algorithm.out -O2 -std=c++11 -lcurl -B /home/runner/var/empty/local && ALGORITHM_VISUALIZER=1 ~/app/algorithm.out");
  if(systemRet == -1){
    bodyResp = "run failed";
    auto resp = HttpResponse::newHttpJsonResponse(bodyResp);
    resp->setBody(bodyResp);
    resp->setStatusCode(k400BadRequest);
    callback(resp);
    return;
  }
  
  ifs.open("/home/runner/app/visualization.json",std::ios::in);
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
  auto resp = HttpResponse::newHttpJsonResponse(root);
  resp->setStatusCode(k200OK);
  callback(resp);
}
