#ifndef MESSAGE_QUEUE_HPP
#define MESSAGE_QUEUE_HPP

#include <iostream>
#include <fstream>
#include <deque>
#include <set>
#include <mutex>
#include <sstream>
#include <map>

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
    MessageQueue(int numFiles) : numFiles(numFiles) {
                fileStreams["main"].open(getFileName("main", 0), std::ios::app);

    }

    ~MessageQueue() {
        // Close file streams
        for (auto& fileStream : fileStreams) {
            fileStream.second.close();
        }
    }

    void push(const T& message, const std::string& source = "main") {
        std::lock_guard<std::mutex> lock(mutex);
        if (unique_messages.find(message) == unique_messages.end()) {
            messages.push_back(message);
            unique_messages.insert(message);

            // Write the message to the file
            int fileIndex = message.id % numFiles;
            fileStreams[source].open(getFileName(source, fileIndex), std::ios::app);
            fileStreams[source] << message.content << '\n';
            fileStreams[source].close();
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
    int numFiles;
    std::deque<T> messages;
    std::set<T, MessageCompare> unique_messages;
    std::map<std::string, std::ofstream> fileStreams;  // File streams for writing (indexed by source)
    std::mutex mutex;

    std::string getFileName(const std::string& source, int fileIndex) {
        std::stringstream filename;
        filename << "messages_" << source << "_file_" << fileIndex << ".txt";
        return filename.str();
    }
};

#endif
