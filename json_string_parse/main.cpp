#include <string>
#include <map>
#include <algorithm>
#include <iostream>

std::map<std::string, std::string> parse_json(const std::string& json) {
    std::map<std::string, std::string> result;

    // Iterate through the string and extract the key-value pairs
    size_t pos = 0;
    while (pos < json.size()) {
        // Find the start of the key
        pos = json.find_first_of("\"", pos);
        if (pos == std::string::npos) {
            break;
        }

        // Find the end of the key
        size_t key_end = json.find_first_of("\"", pos + 1);
        if (key_end == std::string::npos) {
            break;
        }

        // Extract the key
        std::string key = json.substr(pos + 1, key_end - pos - 1);

        // Find the start of the value
        pos = json.find_first_of(":", key_end + 1);
        if (pos == std::string::npos) {
            break;
        }

        // Find the end of the value
        size_t value_end = json.find_first_of(",", pos + 1);
        if (value_end == std::string::npos) {
            value_end = json.find_first_of("}", pos + 1);
            if (value_end == std::string::npos) {
                break;
            }
        }

        // Extract the value
        std::string value = json.substr(pos + 1, value_end - pos - 1);

        // Trim leading and trailing whitespace from the value
        value.erase(value.begin(), std::find_if(value.begin(), value.end(), [](int ch) {
            return !std::isspace(ch);
        }));
        value.erase(std::find_if(value.rbegin(), value.rend(), [](int ch) {
            return !std::isspace(ch);
        }).base(), value.end());

        // Store the key-value pair in the map
        result[key] = value;

        // Move to the next key-value pair
        pos = value_end + 1;
    }

    return result;
}

int main() {
    std::string json = R"({
        "key1": "value1",
        "key2": "value2",
        "key3": "value3"
    })";

    auto result = parse_json(json);
    for (const auto& pair : result) {
        std::cout << pair.first << ": " << pair.second << std::endl;
    }
}
