#include "Timer.hpp"

class MyTimer : public Timer {

public:
    
    MyTimer(std::string name) :
        m_name(name)
    {
    };
    virtual ~MyTimer(){};

    std::string asString() {
        return m_name;
    };

    std::string m_name;
};

