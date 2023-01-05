#include <cmath>
#include <vector>
#include <iostream>

int mean_round_2(std::vector<int> numbers) {
    double mean = 0;
    for (int number : numbers) {
        mean += number;
    }
    mean /= numbers.size();
    return static_cast<int>(mean + (mean - static_cast<int>(mean) >= 0.5));
}
int mean_round(std::vector<int> numbers) {
    double mean = 0;
    for (int number : numbers) {
        mean += number;
    }
    mean /= numbers.size();
    return std::round(mean);
}

int main() {

    std::vector<int> numbers = {1, 2, 3, 4, 5};
    int mean_rounded = mean_round(numbers);
    int mean_rounded_2 = mean_round_2(numbers);
    std::cout << mean_rounded << std::endl;  // Output: 3
    std::cout << mean_rounded_2 << std::endl;  // Output: 3
}
