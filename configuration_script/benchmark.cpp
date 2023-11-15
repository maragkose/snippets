#include <iostream>
#include <string>
#include <chrono>
#include <vector>

#include "ConfigurationBase.hpp"
#include "conf.hpp"
#include "Config.hpp"

int main() {
    const long int num_iterations = 50000;
    std::string test_value = "test";

    std::vector<std::string> test_vector {"test1", "test2", "test3", "test4", "test5", "test6", "test7", "test8", "test9", "test10"};

    ConfigurationBase conf;
    tmpl::ConfigurationBase tconf;
    config::Configuration cconf;

    // Benchmarking ConfigurationBase
    // ------------------------------
    for (long int i = 0; i < 10; i++) {
        conf.set(test_vector[i], test_vector[i]);
        tconf.set(test_vector[i], test_vector[i]);
    }

    // Start the timer
    auto start = std::chrono::high_resolution_clock::now();

    // Call the function num_iterations times
    for (int i = 0; i < num_iterations; i++) {
        conf.get<std::string>(test_vector[i % 10]);
    }

    // Stop the timer
    auto stop = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(stop - start);

    // Print the results
    std::cout << "Time taken by function: " << duration.count() << " microseconds" << std::endl;
    std::cout << "Time taken per call: " << duration.count() / (num_iterations*1000) << " microseconds" << std::endl;
   
    // Benchmarking tmpl::ConfigurationBase
    // -----------------------------------
    start = std::chrono::high_resolution_clock::now();

    // Call the function num_iterations times
    for (int i = 0; i < num_iterations; i++) {
        tconf.get<std::string>(test_vector[i % 10]);
    }

    // Stop the timer
    stop = std::chrono::high_resolution_clock::now();
    duration = std::chrono::duration_cast<std::chrono::microseconds>(stop - start);

    // Print the results
    std::cout << "Time taken by function: " << duration.count() << " microseconds" << std::endl;
    std::cout << "Time taken per call: " << duration.count() / (num_iterations*1000) << " microseconds" << std::endl;

    // Benchmarking config::Config
    // ---------------------------
    start = std::chrono::high_resolution_clock::now();

    // Call the function num_iterations times
    for (int i = 0; i < num_iterations; i++) {
        cconf.test4();
    }

    // Stop the timer
    stop = std::chrono::high_resolution_clock::now();
    duration = std::chrono::duration_cast<std::chrono::microseconds>(stop - start);

    // Print the results
    std::cout << "Time taken by function: " << duration.count() << " microseconds" << std::endl;
    std::cout << "Time taken per call: " << duration.count() / (num_iterations*1000) << " microseconds" << std::endl;


    return 0;
}

