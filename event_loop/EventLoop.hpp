#include <functional>
#include <queue>
#include <thread>
#include <type_traits>
#include <mutex>
#include <memory>

class EventLoop {
public:
  EventLoop() : running_(true), thread_(std::bind(&EventLoop::Run, this)) {}

  ~EventLoop() {
    running_ = false;
    thread_.join();
  }

  template <typename F>
  void Post(F&& task) {
    //tasks_.emplace(std::forward<F>(task));
    tasks_.emplace(std::make_unique<WrappedTask<F>>(std::forward<F>(task)));

  }

private:
  struct Task {
    virtual ~Task() {}
    virtual void operator()() = 0;
  };

  template <typename F>
  struct WrappedTask : Task {
    WrappedTask(F&& task) : task_(std::forward<F>(task)) {}
    void operator()() override { task_(); }
    F task_;
  };

  void Run() {
    while (running_) {
      Task* task = nullptr;
      {
        std::unique_lock<std::mutex> lock(mutex_);
        if (tasks_.empty()) {
          continue;
        }
        task = tasks_.front().release();
        tasks_.pop();
      }
      (*task)();
      delete task;
    }
  }

  bool running_;
  std::queue<std::unique_ptr<Task>> tasks_;
  std::mutex mutex_;
  std::thread thread_;
};

template <typename F>
void Post(EventLoop& event_loop, F&& task) {
  event_loop.Post(std::forward<F>(task));
}



