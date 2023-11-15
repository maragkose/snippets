#include <boost/asio.hpp>
#include <iostream>

namespace asio = boost::asio;
using boost::system::error_code;
using asio::ip::tcp;

struct Demo {
    Demo(asio::io_service& svc, std::string hostname, std::string port) : 
        _svc(svc),
        _hostname(hostname),
        _port(port),
        query(hostname, port)
    {
    }
    void doResolve() {
        resolver.async_resolve(query, [this](error_code error, tcp::resolver::iterator it) {
                tcp::endpoint ep = error? tcp::endpoint{} : *it;
                _svc.post([this, error, ep] { handle_resolve_handler(error, ep); });
            });
    }

private:

    asio::io_service& _svc;
    tcp::resolver resolver     {_svc};
    tcp::resolver::query query;
    std::string _hostname;
    std::string _port;
    void handle_resolve_handler(error_code ec, tcp::endpoint srvEndpoint) {
        std::cout << "handle_resolve_handler: " << ec.message() << " " << srvEndpoint << "\n";
    }
};

int main(int argc, char ** argv) {
    asio::io_service svc;
    Demo x(svc, std::string {argv[1]}, std::string{argv[2]});
    x.doResolve();
    svc.run();
}
