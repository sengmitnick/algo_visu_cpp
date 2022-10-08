#include <main.h>

int main() {
    drogon::app().loadConfigFile("/home/runner/app/server/configs/config.json");
    drogon::app().run();
    return 0;
}
