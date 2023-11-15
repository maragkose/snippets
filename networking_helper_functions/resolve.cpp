#include <boost/asio.hpp>
#include <iostream>
#include <vector>

int main(int argc, const char **argv) {

    std::vector<std::string> ip_addresses;

	boost::asio::io_service io_service;
	boost::asio::ip::tcp::resolver resolver(io_service);
	boost::asio::ip::tcp::resolver::query query(std::string{argv[1]}, std::string{argv[2]});
	boost::asio::ip::tcp::resolver::iterator iter = resolver.resolve(query);

    boost::asio::ip::tcp::resolver::iterator end;
    boost::system::error_code error = boost::asio::error::host_not_found;

    while (error && iter != end) {
        if(iter->endpoint().address().is_v4()) {
            ip_addresses.push_back(iter->endpoint().address().to_string());
        }
        *iter++;
    }

    for(auto &addr: ip_addresses) { 
        std::cout << "Address resolved: " << addr << std::endl;
    }
}
