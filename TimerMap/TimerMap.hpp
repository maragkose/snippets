#include <boost/asio.hpp>
#include <boost/thread.hpp>

#include <map>
#include <string>
#include <iostream>

//------------------------------------------------------
class TimerMap {
//------------------------------------------------------

public:

    explicit                    TimerMap(boost::asio::io_service& io_context, uint32_t max_size);
                                ~TimerMap() = default;

    bool                        insert(const std::string& key, uint32_t duration);
    bool                        contains(const std::string& key) const;
    bool                        erase(const std::string& key);
    size_t                      size() const;

private:

    boost::asio::io_service&                                     _io_context;
    mutable boost::shared_mutex                                  _mutex;
    
    std::unordered_map<std::string, boost::asio::steady_timer*>  _timer_keys;
    uint32_t                                                     _max_size;
};

//------------------------------------------------------
TimerMap::TimerMap(boost::asio::io_service& io_context, uint32_t max_size) :
//------------------------------------------------------
    _io_context(io_context),
    _max_size(max_size)
{
}

//------------------------------------------------------
bool TimerMap::insert(const std::string& key, uint32_t duration) {
//------------------------------------------------------

    boost::unique_lock<boost::shared_mutex> lock(_mutex);

    if(_timer_keys.size() >= _max_size) {
        return false;
    }

    const auto timer = new boost::asio::steady_timer(_io_context, std::chrono::seconds(duration));

    timer->async_wait([this, key, timer](const boost::system::error_code& e) {
        if(!e)  {
            std::cout << "Timer expired! Removing: " << key << std::endl;
            _timer_keys.erase(key);
            delete timer;
        } else {
            std::cout << "Error:" << e.message() << std::endl;
            delete timer;
        }
    });
    
    _timer_keys[key] = timer;
    return true;
}

//------------------------------------------------------
bool TimerMap::contains(const std::string& key) const {
//------------------------------------------------------
    const boost::unique_lock<boost::shared_mutex> lock(_mutex);
    return _timer_keys.count(key) != 0;
}

//------------------------------------------------------
bool TimerMap::erase(const std::string& key) {
//------------------------------------------------------
    std::cout << "Erase: " << key << std::endl;
    _timer_keys.erase(key);
    return true;
}

//------------------------------------------------------
size_t TimerMap::size() const {
//------------------------------------------------------
    return _timer_keys.size();
}

