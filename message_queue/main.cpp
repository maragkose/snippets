#include <iostream>
#include <deque>
#include <set>
#include <tuple>

struct Message {
    int id;
    std::string content;
};

// Define a custom comparison function for Message
struct MessageCompare {
    bool operator()(const Message& m1, const Message& m2) const {
        return std::tie(m1.id, m1.content) < std::tie(m2.id, m2.content);
    }
};

template <typename T>
class MessageQueue {
public:
    // Push a message into the queue
    void push(const T& message) {
        if (unique_messages.find(message) == unique_messages.end()) {
            messages.push_back(message);
            unique_messages.insert(message);
        }
    }

    // Pull a message from the front of the queue
    bool pull(T& message) {
        if (!messages.empty()) {
            message = messages.front();
            messages.pop_front();
            unique_messages.erase(message);
            return true;
        }
        return false;
    }

    // Check if the queue is empty
    bool empty() const {
        return messages.empty();
    }

private:
    std::deque<T> messages;
    std::set<T, MessageCompare> unique_messages;
};

int main() {
    MessageQueue<Message> messageQueue;

    messageQueue.push({1, "Message 1"});
    messageQueue.push({2, "Message 2"});
    messageQueue.push({1, "Message 1"}); // This will not be added due to duplication

    Message message;
    while (messageQueue.pull(message)) {
        std::cout << "Received: ID=" << message.id << ", Content: " << message.content << std::endl;
    }

    return 0;
}

