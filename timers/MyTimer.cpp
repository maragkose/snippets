#include "MyTimer.hpp"

int main () {

    MyTimer t("hello");
    t.timer_start(5);
    std::this_thread::sleep_for(std::chrono::seconds(6));

    t.timer_stop();
    for(;;) {}
}
