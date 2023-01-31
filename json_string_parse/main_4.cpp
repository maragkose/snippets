#include <iostream>
#include <map>
#include <string>
#include <algorithm>

bool parse_key_value(const std::string &json, size_t &pos, std::string &key, std::string &value) {
    // Find the start of the key
    pos = json.find_first_of("\"", pos);
    if (pos == std::string::npos) {
        return false;
    }

    // Find the end of the key
    size_t key_end = json.find_first_of("\"", pos + 1);
    if (key_end == std::string::npos) {
        return false;
    }

    // Extract the key
    key = json.substr(pos + 1, key_end - pos - 1);

    // Find the start of the value
    pos = json.find_first_of(":", key_end + 1);
    if (pos == std::string::npos) {
        return false;
    }

    // Find the end of the value
    size_t value_end = json.find_first_of(",", pos + 1);
    if (value_end == std::string::npos) {
        value_end = json.find_first_of("}", pos + 1);
        if (value_end == std::string::npos) {
            return false;
        }
    }

    // Extract the value
    value = json.substr(pos + 1, value_end - pos - 1);

    // Trim leading and trailing whitespace from the value
    value.erase(value.begin(), std::find_if(value.begin(), value.end(), [](int ch) {
        return !std::isspace(ch);
    }));
    value.erase(std::find_if(value.rbegin(), value.rend(), [](int ch) {
        return !std::isspace(ch);
    }).base(), value.end());
    // erase " 
    value.erase(std::remove(value.begin(), value.end(), '\"'), value.end());  // remove the quotes from the value

    return true;
}

std::map<std::string, std::string> parse_json(const std::string& json) {
    std::map<std::string, std::string> result;
    size_t pos = 0;
    while (pos < json.size()) {
        std::string key, value;
        if(!parse_key_value(json, pos, key, value)) break;
        result[key] = value;
    }
    return result;
}

int main() {
    std::string input = "{\"key1\":\"value1\", \"key2\":\"value2\"}";
    std::map<std::string, std::string> output = parse_json(input);

    for (const auto& [key, value] : output) {
        std::cout << key << ": " << value << std::endl;
    }
    return 0;
}

