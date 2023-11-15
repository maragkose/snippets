#include "RegexMatcher.hpp"

int main() {
    RegexMatcher regexMatcher;

    regexMatcher.AddPattern("Greeting", "Hello, (.*)!");
    regexMatcher.AddPattern("Number", "The answer is (\\d+)");

    std::string input1 = "Hello, World!";
    std::string input2 = "The answer is 42";
    std::string input3 = "Goodbye, everyone!";

    std::string result1 = regexMatcher.Match(input1);
    std::string result2 = regexMatcher.Match(input2);
    std::string result3 = regexMatcher.Match(input3);

    std::cout << "Result 1: " << result1 << std::endl; // Output: Greeting
    std::cout << "Result 2: " << result2 << std::endl; // Output: Number
    std::cout << "Result 3: " << result3 << std::endl; // Output: (empty string)

    return 0;
}
