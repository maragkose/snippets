#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <thread>
#include <mutex>
#include <chrono>
#include <boost/filesystem.hpp>
#include <boost/interprocess/sync/file_lock.hpp>

namespace fs = boost::filesystem;
namespace bip = boost::interprocess;

const char* filename = "shared_data.txt";
std::mutex coutMutex;

// Function to write a record to the file
void writeRecord(const std::string& message, int threadId) {
    std::ofstream outFile(filename, std::ios::app);
    if (!outFile.is_open()) {
        std::cerr << "Error opening file for writing\n";
        return;
    }

    {
        std::lock_guard<std::mutex> lock(coutMutex);
        std::cout << "Thread " << threadId << " is writing.\n";
    }

    bip::file_lock fileLock(filename);
    fileLock.lock();

    // Simulate some work
    std::this_thread::sleep_for(std::chrono::milliseconds(100));

    // Write the message to the file
    outFile << message << "\n";

    fileLock.unlock();
    outFile.close();

    {
        std::lock_guard<std::mutex> lock(coutMutex);
        std::cout << "Thread " << threadId << " finished writing.\n";
    }
}

// Function to read and remove one record from the file
void readAndRemoveRecord(int threadId) {
    std::fstream file(filename, std::ios::in | std::ios::out);
    if (!file.is_open()) {
        std::cerr << "Error opening file for reading and writing\n";
        return;
    }

    {
        std::lock_guard<std::mutex> lock(coutMutex);
        std::cout << "Thread " << threadId << " is reading and removing.\n";
    }

    bip::file_lock fileLock(filename);
    fileLock.lock();

    // Go to the beginning of the file
    file.seekg(0, std::ios::beg);

    std::string line;
    if (std::getline(file, line)) {
        // Process the record (in this example, just print it)
        {
            std::lock_guard<std::mutex> lock(coutMutex);
            std::cout << "Thread " << threadId << " Read: " << line << "\n";
        }

        // Remove the read record by copying the rest of the file over it
        std::string restOfFile;
        while (std::getline(file, line)) {
            restOfFile += line + '\n';
        }

        file.close();

        // Reopen the file in truncation mode
        file.open(filename, std::ios::out | std::ios::trunc);
        file << restOfFile;
    }

    fileLock.unlock();
    file.close();

    {
        std::lock_guard<std::mutex> lock(coutMutex);
        std::cout << "Thread " << threadId << " finished reading and removing.\n";
    }
}

int main() {
    // Example messages to be written
    std::vector<std::string> messages = {
        "Message 1",
        "Message 2",
        "Message 3",
        // Add more messages as needed
    };

    // Write records to the file using multiple threads
    std::vector<std::thread> writeThreads;
    for (int i = 0; i < 5; ++i) {
        writeThreads.emplace_back(writeRecord, messages[i % messages.size()], i);
    }

    // Read and remove records from the file using multiple threads
    std::vector<std::thread> readThreads;
    for (int i = 0; i < 5; ++i) {
        readThreads.emplace_back(readAndRemoveRecord, i);
    }

    // Join the threads to wait for them to finish
    for (auto& thread : writeThreads) {
        thread.join();
    }

    for (auto& thread : readThreads) {
        thread.join();
    }

    return 0;
}

