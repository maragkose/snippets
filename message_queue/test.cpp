#include <iostream>
#include <thread>
#include <vector>
#include "MessageQueue.hpp"

int main() {
    MessageQueue<Message> messageQueue;

    // Function to simulate writing messages to the queue
    auto writer = [&messageQueue](int id) {
        for (int i = 0; i < 500000; ++i) {
            Message msg = {id, "Message " + std::to_string(id)};
            messageQueue.push(msg);
            //std::this_thread::sleep_for(std::chrono::milliseconds(10));
        }
    };

    // Function to simulate reading messages from the queue
    auto reader = [&messageQueue](int id) {
        for (int i = 0; i < 500000; ++i) {
            Message msg;
            if (messageQueue.pull(msg)) {
                //std::cout << "Reader " << id << " Received: ID=" << msg.id << ", Content: " << msg.content << std::endl;
            } else {
                //std::cout << "Reader " << id << " Queue is empty." << std::endl;
            }
            //std::this_thread::sleep_for(std::chrono::milliseconds(20));
        }
    };

    std::vector<std::thread> threads;

    // Create multiple writer and reader threads
    for (int i = 1; i <= 5; ++i) {
        threads.push_back(std::thread(writer, i));
        threads.push_back(std::thread(reader, i));
    }

    // Join all the threads
    for (auto& thread : threads) {
        thread.join();
    }

    return 0;
}

