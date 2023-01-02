#include <iostream>
#include <string>
#include <map>

template <typename T>
std::string generateString(T&& arg) {
  return std::string("\"") + arg.first + "\"" + " : " + "\"" + arg.second + "\"";
}

template <typename... Args>
std::string generateString(Args&&... args) {
  std::string output;
  int numArgs = sizeof...(args);
  int i = 0;
  (void)std::initializer_list<int>{(output += generateString(std::forward<Args>(args)), i++, 0)...};
  return output;
}

// convert map to json like string
std::string convert_to_json(std::map<std::string, std::string> const& m) {
      std::string output = "{";
    
      for(auto const& pair: m) {
        output += generateString(pair);
        output += ",";
      }
      output.pop_back();
      output.pop_back();
      output += "}";
      return output;
}

int main() {
    std::string result = "{ " + generateString(std::make_pair("name", "John"), std::make_pair("age", "30"), std::make_pair("location", "New York")) + " }";
    std::cout << result << std::endl;

    std::map<std::string, std::string> kvMap;
    kvMap["name"] = "John";
    kvMap["age"] = "30";
    kvMap["location"] = "New York";
    kvMap["occupation"] = "Software Engineer";

    std::cout << convert_to_json(kvMap) << std::endl;
    return 0;
}

