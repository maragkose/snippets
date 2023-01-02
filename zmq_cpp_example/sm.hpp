#include <unordered_map>
#include <vector>

class SubscriberManager {
public:
    void add_subscriber(Subscriber& subscriber, const std::string& topic) {
        subscriber.subscribe(topic);
        _subscribers.emplace(&subscriber, topic);
    }

    void receive_messages() {
        // Create a vector of zmq::pollitem_t structures
        std::vector<zmq::pollitem_t> items;
        items.reserve(_subscribers.size());
        for (const auto& [subscriber, topic] : _subscribers) {
            zmq::pollitem_t item = {
                static_cast<void*>(subscriber->socket()),
                0,
                ZMQ_POLLIN,
                0
            };
            items.push_back(item);
        }

        // Poll the subscribers

