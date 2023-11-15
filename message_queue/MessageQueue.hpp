#ifndef MESSAGE_QUEUE_HPP
#define MESSAGE_QUEUE_HPP

#include <iostream>
#include <deque>
#include <set>
#include <mutex>

struct Message {
    int id;
    std::string content;
};

struct MessageCompare {
    bool operator()(const Message& m1, const Message& m2) const {
        return std::tie(m1.id, m1.content) < std::tie(m2.id, m2.content);
    }
};

template <typename T>
class MessageQueue {
public:
    void push(const T& message) {
        std::lock_guard<std::mutex> lock(mutex);
        if (unique_messages.find(message) == unique_messages.end()) {
            messages.push_back(message);
            unique_messages.insert(message);
        }
    }

    bool pull(T& message) {
        std::lock_guard<std::mutex> lock(mutex);
        if (!messages.empty()) {
            message = messages.front();
            messages.pop_front();
            unique_messages.erase(message);
            return true;
        }
        return false;
    }

    bool empty() const {
        std::lock_guard<std::mutex> lock(mutex);
        return messages.empty();
    }

private:
    std::deque<T> messages;
    std::set<T, MessageCompare> unique_messages;
    std::mutex mutex;
};
#endif
