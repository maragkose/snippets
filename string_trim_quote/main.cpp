#include <string>
#include <iostream>

std::string trim_quote(std::string s) {
    if (s.front() == '"') {
        s.erase(0, 1);
    }
    if (s.back() == '"') {
        s.erase(s.size() - 1, 1);
    }
    return s;
}


int main() {
    std::string s = "\"hello\"";
    std::string ss = "again";
    std::string t = trim_quote(s);
    std::string tt = trim_quote(ss);
    std::cout << t << std::endl;
    std::cout << tt << std::endl;
    return 0;
}
