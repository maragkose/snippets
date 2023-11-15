#include "Configuration.hpp"

int main()
{
    Configuration config("../../config.conf");
    std::cout  << config.grpc_server_ip() << std::endl;
    config.print();
}
