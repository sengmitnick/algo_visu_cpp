#include <iostream>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
 
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
 
int main()
{
	std::cout << getCmdResult("date") << std::endl;
	std::cout << getCmdResult("cat /proc/sys/kernel/random/uuid") << std::endl;
    return 0;
}