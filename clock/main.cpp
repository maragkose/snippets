#include <stdint.h>
#include <sys/time.h>
#include <pthread.h>
#include <iostream>
#include <chrono>
#include <thread>

typedef struct
{
    /* Fields for LIBGEN processes */
    int active;
    struct timespec ts[2];
    unsigned int dxclock;
    /* Fields private to libgend */
    struct timespec start_time;
    pthread_mutex_t barrier_mutex;
} globaltime_t;

static globaltime_t *globaltime = new globaltime_t;

static void globaltime_update(void)
{
    struct timespec ts;
    unsigned int dxclock;
    int next;
    
    next = 1 - globaltime->active;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    globaltime->ts[next].tv_sec = ts.tv_sec;
    globaltime->ts[next].tv_nsec = ts.tv_nsec;

    /* dxclock is counted as in true DMX, counting 1/100 of seconds
     * since system (libgend) start-up */
    dxclock = 100 * (ts.tv_sec - globaltime->start_time.tv_sec);
    dxclock += (ts.tv_nsec - globaltime->start_time.tv_nsec) / 10000000;
    globaltime->dxclock = dxclock;
    globaltime->active = next;
    std::cerr << dxclock << ":" << next << std::endl; 
}

int main(int argc, char **argv)  {

    if(argv[1] == 0) {
        clock_gettime(CLOCK_MONOTONIC, &globaltime->start_time);
    }

    while(true) {

        globaltime_update();
        std::this_thread::sleep_for(std::chrono::milliseconds(1000));
    };

}
