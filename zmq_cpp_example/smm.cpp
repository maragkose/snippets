#include <unordered_map>
#include <vector>
#include <string>
#include <zmq.hpp>

class SubscriberManager {
public:
  // Poll timeout in milliseconds
  static constexpr int POLL_TIMEOUT = 100;

  // Adds a new subscriber to the manager
  void addSubscriber(const std::string& addr, zmq::socket_t& subscriber) {
    subscribers_.emplace(addr, subscriber);
  }

  // Polls and receives messages from all subscribers
  void receiveMessages() {
    // Create a map of sockets to receive messages from
    zmq::pollitem_t items[subscribers_.size()];
    int i = 0;
    for (const auto& [addr, socket] : subscribers_) {
      items[i].socket = socket;
      items[i].events = ZMQ_POLLIN;
      ++i;
    }

    // Poll sockets for new messages
    zmq::poll(items, subscribers_.size(), POLL_TIMEOUT);

    // Receive messages from sockets with available data
    for (const auto& [addr, socket] : subscribers_) {
      if (items[i].revents & ZMQ_POLLIN) {
        zmq::message_t msg;
        if (socket.recv(msg)) {
          // Process the received message here
        }
      }
      ++i;
    }
  }

private:
  std::unordered_map<std::string, zmq::socket_t> subscribers_;
};

int main() {
}
