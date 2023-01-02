#include <iostream>
#include <map>
#include <string>
#include <boost/variant.hpp>

struct ToStringVisitor : public boost::static_visitor<std::string> {
  std::string operator()(int value) const {
    return std::to_string(value);
  }
  std::string operator()(const std::string& value) const {
    return "\"" + value + "\"";
  }
  std::string operator()(double value) const {
    return std::to_string(value);
  }
};

template <typename T>
std::string generateString(const std::pair<std::string, T>& pair) {
  return "\"" + pair.first + "\"" + ":" + boost::apply_visitor(ToStringVisitor(), pair.second);
}

template <typename... Args>
std::string generateStringFromMap(const std::map<std::string, boost::variant<Args...>>& map) {
  std::string output;
  int i = 0;
  for (const auto& pair : map) {
    output += generateString(std::make_pair(pair.first, pair.second));
    if (i < map.size() - 1) {
      output += ",";
    }
    i++;
  }
  return "{ " + output + " }";
}

int main() {
  typedef boost::variant<int, std::string, double> ValueType;
  std::map<std::string, ValueType> map {
    {"key1", 5},
    {"key2", "value2"},
    {"key3", 3.14}
  };
  std::cout << generateStringFromMap(map) << std::endl;

}

