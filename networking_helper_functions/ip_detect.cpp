#include <boost/asio.hpp>
#include <boost/assert.hpp>

#include <iostream>
#include <string>

using namespace std;

int main(int argc, char* argv[]){

    std::string ipv4("192.168.1.1");
    std::string ipv6("::1");
    std::string notIP("hostname");

    boost::asio::ip::address ipv4Addr = boost::asio::ip::address::from_string(ipv4);
    BOOST_ASSERT(ipv4Addr.is_v4() == true);

    boost::asio::ip::address ipv6Addr = boost::asio::ip::address::from_string(ipv6);
    BOOST_ASSERT(ipv6Addr.is_v6() == true);

    boost::asio::ip::address badAddr;
    try{
        badAddr = boost::asio::ip::address::from_string(notIP);
    }
    catch(const std::exception& e){
        std::cout << "Bad Address:  " << e.what() << std::endl;
    }
    boost::system::error_code ec; 
    badAddr = boost::asio::ip::address::from_string(notIP, ec);

    if(ec) {
        std::cout << "error: " << ec.message() << std::endl;

    } else {
        std::cout << " IP is valid" << std::endl;

    }

    auto addr = boost::asio::ip::make_address("127.0.0.1", ec) ;
    if(ec) {
        std::cout << "ERROR:" << ec.message() << std::endl;
    } else {
        std::cout << "ok" << std::endl;
    }


    return 0;
}
