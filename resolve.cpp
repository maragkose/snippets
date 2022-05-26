#include <boost/asio.hpp>
#include <iostream>


std::string resolve_address_as_v4(
int main() {

	boost::asio::io_service io_service;
	boost::asio::ip::tcp::resolver resolver(io_service);
	boost::asio::ip::tcp::resolver::query query("localhost", "6389");
	boost::asio::ip::tcp::resolver::iterator iter = resolver.resolve(query);

        boost::asio::ip::tcp::resolver::iterator end;
        boost::system::error_code error = boost::asio::error::host_not_found;

        while (error && iter != end) {
            if(iter->endpoint().address().is_v4()) {
                return iter->endpoint().address().to_string();
            }
            *iter++;
        }

}
