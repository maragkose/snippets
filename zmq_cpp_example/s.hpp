#include <zmq.hpp>

class Subscriber {
public:
    Subscriber(zmq::context_t& context) : _socket(context, ZMQ_SUB) {}

    void connect(const std::string& endpoint) {
        _socket.connect(endpoint);
    }

    void subscribe(const std::string& topic) {
        _socket.setsockopt(ZMQ_SUBSCRIBE, topic.c_str(), topic.length());
    }

    std::string receive() {
        zmq::message_t message;
        _socket.recv(&message);
        return std::string(static_cast<char*>(message.data()), message.size());
    }

private:
    zmq::socket_t _socket;
};

