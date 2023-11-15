#include "TimerMapController.hpp"
#include <boost/asio.hpp>
#include <iostream>
#include <chrono>
#include <thread>

int main() {

  TimerMapController timer_map_controller;
    
  timer_map_controller.start();

  std::this_thread::sleep_for(std::chrono::milliseconds(500));
  timer_map_controller.insert("key1", 2);
  timer_map_controller.insert("key2", 4);
  
  std::cout << "Contains K1: " << timer_map_controller.contains("key1") << "\n";
  std::cout << "Contains K2: " << timer_map_controller.contains("key2") << "\n";
  std::cout << "Map size: " << timer_map_controller.size() << "\n";

  std::this_thread::sleep_for(std::chrono::milliseconds(2500));
  std::cout << "Contains K1: " << timer_map_controller.contains("key1") << "\n";
  std::cout << "Contains K2: " << timer_map_controller.contains("key2") << "\n";
  std::cout << "Map size: " << timer_map_controller.size() << "\n";
  
  std::this_thread::sleep_for(std::chrono::milliseconds(2500));
  std::cout << "Contains K1: " << timer_map_controller.contains("key1") << "\n";
  std::cout << "Contains K2: " << timer_map_controller.contains("key2") << "\n";
  std::cout << "Map size: " << timer_map_controller.size() << "\n";

  // Check if the key has been removed from the map
  timer_map_controller.stop();

  return 0;
}
