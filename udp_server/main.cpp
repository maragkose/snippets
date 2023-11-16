#include "UDPServer.hpp"

// Example usage
void on_msg_received(const std::string& message) {
    std::cout << "Received: " << message << std::endl;
}

int main() {

    boost::asio::io_context io_context;
    boost::asio::executor_work_guard <boost::asio::io_context::executor_type>  work(boost::asio::make_work_guard(io_context));

    std::thread th([&]() { io_context.run(); });
    UDPServer server(io_context, "0.0.0.0", 8888);
    server.set_msg_recv_callback(on_msg_received);
    server.start();

    // Run the server for a while
    std::this_thread::sleep_for(std::chrono::seconds(10));

    server.stop();
    io_context.stop();
    th.join();

    return 0;
}
