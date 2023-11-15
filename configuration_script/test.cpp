#include "ConfigurationBase.hpp"
#include <iostream>

int main()
{
    ConfigurationBase config("config.txt");
    config.read_file("config.txt");
    std::cout << config.get<std::string>("name") << std::endl;
    std::cout << config.get<std::vector<std::string>>("list")[2] << std::endl;

    return 0;
}
