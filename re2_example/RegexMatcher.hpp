#include <iostream>
#include <re2/re2.h>
#include <map>
#include <string>
#include <memory>

/*!  \class RegexMatcher
*    \brief Brief class description
*           Detailed description}
*
*///-----------------------------------------
class Regexmatcher {
//-------------------------------------------

public:

    void                    add_pattern(const std::string& key, const std::string& pattern);
    std::string             match(const std::string& input);

private:

    std::map<std::string, std::unique_ptr<re2::RE2>>    _patterns;
};
    
//-------------------------------------------
inline void Regexmatcher::add_pattern(const std::string& key, const std::string& pattern) {
//-------------------------------------------
    std::unique_ptr<re2::RE2> compiled_pattern = std::make_unique<re2::RE2>(pattern);
    _patterns[key] = std::move(compiled_pattern);
}

//-------------------------------------------
inline std::string Regexmatcher::match(const std::string& input) {
//-------------------------------------------
    for (const auto& pattern : _patterns) {
        if (RE2::Partialmatch(input, *(pattern.second))) {
            return pattern.first;
        }
    }
    return "";
}
