#include <iostream>
#include <memory>
#include <random>

int main() {
    // Seed the random number generator using std::random_device
    std::random_device rd;
    std::mt19937 gen(rd());

    // Specify the range using variables
    int lowerBound = 1;
    int upperBound = 100; // Change this variable to set the upper bound

    // Create a shared_ptr for the distribution
    std::shared_ptr<std::uniform_int_distribution<int>> distributionPtr =
        std::make_shared<std::uniform_int_distribution<int>>(lowerBound, upperBound);

    // Use the distribution through the shared_ptr
    int randomNumber1 = (*distributionPtr)(gen);
    int randomNumber2 = (*distributionPtr)(gen);

    // Print the generated numbers
    std::cout << "Random number 1: " << randomNumber1 << std::endl;
    std::cout << "Random number 2: " << randomNumber2 << std::endl;

    return 0;
}
