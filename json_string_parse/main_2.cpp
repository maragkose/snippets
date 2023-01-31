#include <iostream>
#include <map>
#include <string>

std::map<std::string, std::string> parse_string(const std::string& input) {
    std::map<std::string, std::string> output;
    std::string key, value;
    bool key_captured = false;
    for (size_t i = 0; i < input.size(); i++) {
        if (input[i] == '\"') {
            continue;
        } else if (input[i] == ':') {
            key_captured = true;
            continue;
        } else if (input[i] == ',' || input[i] == '}') {
            output[key] = value;
            key.clear();
            value.clear();
            key_captured = false;
            continue;
        }

        if (key_captured) {
            value += input[i];
        } else {
            key += input[i];
        }
    }
    output[key] = value;
    return output;
}


int main() {
    std::string input = "{\"key1\":\"value1\", \"key2\":\"value2\"}";
    std::map<std::string, std::string> output = parse_string(input);

    for (const auto& [key, value] : output) {
        std::cout << key << ": " << value << std::endl;
    }
    return 0;
}

