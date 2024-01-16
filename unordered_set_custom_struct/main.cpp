#include <iostream>
#include <unordered_set>

// Custom struct definition
struct MyStruct {
    int id;
    std::string name;

    // Equality operator for comparison
    bool operator==(const MyStruct& other) const {
        return id == other.id && name == other.name;
    }
};

// Hash function for the custom struct
namespace std {
    template <>
    struct hash<MyStruct> {
        size_t operator()(const MyStruct& s) const {
            // Combine hash values of individual members
            return hash<int>()(s.id) ^ (hash<std::string>()(s.name) << 1);
        }
    };
}

void add(std::unordered_set<MyStruct> &s, int id, const std::string &name) {

    s.insert({id, name});

}

int main() {
    // Creating an unordered_set of custom struct
    std::unordered_set<MyStruct> mySet;

    // Inserting elements into the unordered_set
    mySet.insert({1, "Alice"});
    mySet.insert({2, "Bob"});
    mySet.insert({3, "Charlie"});

    add(mySet, 5, "Hello");
    // Inserting a duplicate element (will be ignored since unordered_set stores unique elements)
    mySet.insert({1, "Alice"});

    // Iterating through the unordered_set
    for (const auto& element : mySet) {
        std::cout << "ID: " << element.id << ", Name: " << element.name << std::endl;
    }

    return 0;
}

