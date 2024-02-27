#include "TcpServer.hpp"

int main() {
    try {
        boost::asio::io_context io_context;
        Server server(io_context);

        server.set_callback([&server](std::shared_ptr<Session> session, const tcp::Header& hdr, const tcp::Message& message) {
            std::cout << "Callback - Received message - Session ID: " << session.get() << ", ID: " << hdr.id()
                      << ", Length: " << hdr.length() << ", Supi: " << message.supi()
                      << ", Priority: " << message.priority() << std::endl;

            // You can send a response back to the client here if needed
        });

        io_context.run();
    } catch (const std::exception& e) {
        std::cerr << "Exception: " << e.what() << std::endl;
    }

    return 0;
}
