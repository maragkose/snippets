#include <iostream>
#include <unordered_map>
#include <stdexcept> // for std::out_of_range

// Assume the CachedData struct is defined somewhere
struct CachedData {
    // Some members of CachedData
    std::string someMember;
};

// Custom unordered_map with enhanced [] operator
struct MyMap : public std::unordered_map<std::string, CachedData> {
    /*
    CachedData& operator[](const std::string& key) {
        auto it = this->find(key);
        if (it == this->end()) {
            // If the key doesn't exist, throw std::out_of_range exception
            throw std::out_of_range("Key not found in MyMap");
        }
        return it->second;
    }*/
};

int main() {
    // Create a MyMap instance
    MyMap myMap;

    try {
        // Access elements in MyMap using the [] operator
        myMap["key1"];
        myMap["key2"];

        // Attempt to access a non-existent key (will throw an exception)
        myMap["key3"];
        myMap.at("sas");
    } catch (const std::exception& e) {
        std::cerr << "Exception: " << e.what() << std::endl;
    }

    // Print the count of elements (inherited from std::unordered_map)
    std::cout << "Count of key1: " << myMap.count("key1") << std::endl;
    std::cout << "Count of key3: " << myMap.count("key3") << std::endl;

    // Print the elements (inherited from std::unordered_map)
    for (const auto& pair : myMap) {
        std::cout << "Key: " << pair.first << ", Value: " << pair.second.someMember << std::endl;
    }

    return 0;
}

