#include <iostream>
#include <boost/asio.hpp>

namespace io = boost::asio;
namespace ip = io::ip;
using tcp = ip::tcp;
using error_code = boost::system::error_code;

int main()
{
    io::io_context io_context;
    error_code error;
    tcp::resolver resolver(io_context);

    tcp::resolver::results_type results = resolver.resolve("google.coms", "8s0", error);

    for(tcp::endpoint const& endpoint : results)
    {
        std::cout << endpoint << "\n";
    }

    return 0;
}
