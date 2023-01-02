#include <iostream>
#include <boost/json.hpp>

using namespace boost::json;

int main() {
  // Parse a JSON string into a JSON value
  std::string json_str = "{\"key\":\"value\"}";
  value val = parse(json_str);

  std::string key =  val.as_object()["key"].as_string().c_str();
  // Access the "key" field in the JSON object
  //std::string key = val["key"].get<std::string>();

  // Print the value of the "key" field
  std::cout << "The value of the 'key' field is: " << key << std::endl;

  return 0;
}

