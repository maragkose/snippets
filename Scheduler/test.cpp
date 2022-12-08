#include "EventScheduler.hpp"
#include <iostream>

void call (EventScheduler & scheduler) {
    EventScheduler::invoke(scheduler, [&scheduler](){ std::cout << "Hello with delay!" << std::endl; call(scheduler);}, 5000);
}

int main(int argc, char *argv[])
{
    EventScheduler scheduler;
    scheduler.start();
    EventScheduler::invoke(scheduler, [](){ std::cout << "Hello!" << std::endl; });
    call(scheduler);
    for(;;){}
}
