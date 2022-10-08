#pragma once
#include <main.h>

class test : public drogon::HttpController<test>
{
  public:
    METHOD_LIST_BEGIN
    ADD_METHOD_TO(test::GetTracerCpp, "/api/tracers/cpp", Get);

    METHOD_LIST_END

    void GetTracerCpp(const HttpRequestPtr &req,
                    std::function<void(const HttpResponsePtr&)>&&callback);

};
