#include <thread>
#include <atomic>
#include <iostream>
#include <chrono>

std::atomic_bool running = false;

void worker(){
  while(running){
    auto start_point = std::chrono::system_clock::now();
    std::cout << "Hello World" << std::endl;
    //... do something that takes a variable amount of time ...//

    std::this_thread::sleep_until(start_point+std::chrono::milliseconds(1000));

  }
}

int main(){
  running = true;
  auto t_work = std::thread(worker);
  std::this_thread::sleep_for(std::chrono::milliseconds(10000));

  running = false;
  t_work.join();
}
