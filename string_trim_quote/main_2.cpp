#include <vector>
#include <iostream>
#include <string>
#include <algorithm>

std::string trim_quote(std::string s) {
    if (s.front() == '"') {
        s.erase(0, 1);
    }
    if (s.back() == '"') {
        s.erase(s.size() - 1, 1);
    }
    return s;
}


    //=======================================
    static std::vector<std::string> split(const std::string& s, const char delim, bool removeSpaces=false, bool trimQuotes=false) {
    //=======================================

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
                str.erase(std::remove_if(str.begin(), str.end(), ::isspace), str.end());
                v_stripped.push_back(str);

            }
            v.clear();
            v = v_stripped;
        }
        
        if(trimQuotes) {
            for(auto &str:v) {
                v_stripped.push_back(trim_quote(str));

            }
            v.clear();
            v = v_stripped;
        }
        return v;
    }

int main() {

    std::string A = "1,2,3,4,5,6,7,8,9,10";
    auto list = split(A, ',', true, false);
    for(auto &str:list) {
        std::cout << str << std::endl;
    }
    std::string B = "\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"";
    auto list2 = split(B, ',', false, true);
    for(auto &str:list2) {
        std::cout << str << std::endl;
    }
    
    auto list3 = split(B, ',', false, false);
    for(auto &str:list3) {
        std::cout << str << std::endl;
    }
}
