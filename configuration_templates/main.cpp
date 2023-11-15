#include "Configuration.hpp"
#include <iostream>


int main() {

    Configuration conf;
  conf.set<int>("port", 50505);
    conf.set<bool>("debug", true);
    conf.set<std::string>("hostname", "localhost");
    conf.set<std::vector<int>>("ip_endpoints", {127, 0, 0, 1});
    conf.set<std::vector<std::string>>("strings", {"str1", "str2"});

    // Get values
    int port = conf.get<int>("port");
    bool debug = conf.get<bool>("debug");
    std::string hostname = conf.get<std::string>("hostname");
    //std::string hostname_2 = conf.get("hostname").as<std::string>();
    //std::string po = conf.get("port").as<std::string>();
    //std::cout <<"hostn:"<< hostname_2<<std::endl;
    std::vector<int> ip_endpoints = conf.get<std::vector<int>>("ip_endpoints");
    std::vector<std::string> strings = conf.get<std::vector<std::string>>("strings");
    std::cout << "Port: " << port << std::endl;
    std::cout << "Debug: " << debug << std::endl;
    std::cout << "Hostname: " << hostname << std::endl;
    std::cout << "IP Endpoints: ";
    for (auto i: ip_endpoints) {
        std::cout << i << " ";
    }
    std::cout << std::endl;
    std::cout << "strings: ";
    for (auto s: strings) {
        std::cout << s << " ";
    }
    std::cout << std::endl;
}
