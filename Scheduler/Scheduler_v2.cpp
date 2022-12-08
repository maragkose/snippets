#include <boost/asio.hpp>
#include <functional>
#include <memory>
#include <thread>

// A Scheduler class that uses boost::asio::io_service to run tasks on a separate thread.
class Scheduler
{
public:
    // Constructor.
    Scheduler()
        : io_service_(),
          work_(boost::asio::make_work_guard(io_service_)),
          thread_()
    {
    }

    // Destructor.
    ~Scheduler()
    {
        stop();
    }

    // Start the io_service on a separate thread.
    void start()
    {
        thread_ = std::make_unique<std::thread>([this]() { io_service_.run(); });
    }

    // Stop the io_service.
    void stop()
    {
        io_service_.stop();
        if (thread_)
            thread_->join();
    }

    // Schedule a task to be run on the io_service with a delay.
    void scheduleTask(std::function<void()> task, std::chrono::steady_clock::duration delay)
    {
        executeTask(std::move(task), std::chrono::steady_clock::now() + delay);
    }

    // Schedule a task to be run on the io_service without a delay.
    void scheduleTask(std::function<void()> task)
    {
        executeTask(std::move(task), std::chrono::steady_clock::now());
    }

private:
    // Execute a task on the io_service with a specified start time.
    void executeTask(std::function<void()> task, std::chrono::steady_clock::time_point start_time)
    {
        io_service_.post([task = std::move(task), start_time, this]() {
            // Calculate the delay until the task should be run.
            auto delay = start_time - std::chrono::steady_clock::now();

            // If the delay is negative, run the task immediately.
            if (delay.count() <= 0)
                task();
            else
                // Otherwise, schedule the task to be run with the calculated delay.
                io_service_.post([task = std::move(task)]() { task(); });
        });
    }

    boost::asio::io_service io_service_;
    boost::asio::executor_work_guard<boost::asio::io_context::executor_type> work_;
    std::unique_ptr<std::thread> thread_;
};

