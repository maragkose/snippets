#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <algorithm>
#include <map>

std::vector<std::string> split(const std::string& s, const char delim, bool removeSpaces=false) {

    auto i = 0;
    auto pos = s.find(delim);
    std::vector<std::string> v;
    std::vector<std::string> v_stripped;

    while (pos != std::string::npos) {
      v.push_back(s.substr(i, pos-i));
      i = ++pos
              ;
      pos = s.find(delim, pos);

      if (pos == std::string::npos) {
         v.push_back(s.substr(i, s.length()));
      }
    }
    if(removeSpaces) {
        for(auto &str:v){
            str.erase(remove_if(str.begin(), str.end(), isspace), str.end());
            v_stripped.push_back(str);

        }
        return v_stripped;
    }
    return v;
}

int main (int argc, char **argv) {

  std::ifstream file(argv[1]);
  std::string str;

  std::map<std::string, std::string> _configuration_strings;
  std::map<std::string, uint32_t> _configuration_integers;
  std::map<std::string, bool> _configuration_booleans;

  auto val = _configuration_strings["hello"];
  std::cout << "val = " << val << std::endl;
  while (std::getline(file, str)) {
      auto token = split(str, '=', true);
      if(token.size() == 2) {
        std::cout << "[" <<  token[0] << "] = [" << token[1] << "]" << std::endl;
      }
  }

}
