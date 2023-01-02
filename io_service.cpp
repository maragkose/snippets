#include <boost/asio.hpp>
#include <iostream>

int main() {

    boost::asio::io_service io; 
    auto work_ptr = std::make_shared<boost::asio::io_service::work>(io);

    boost::asio::post(io, []{ std::cout << "Hello, world 1!" << std::endl; });
    boost::asio::post(io, []{ std::cout << "Hello, world 2!" << std::endl; });
    boost::asio::post(io, []{ std::cout << "Hello, world 3!" << std::endl; });

    std::thread t([&io] { 
        io.run(); 
    });

    work_ptr.reset();
    t.join();
}
