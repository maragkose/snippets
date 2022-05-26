
class DEBUG_LOG {
public:
    template <typename MsgType>
    DEBUG_LOG& operator<<(const MsgType& msg){ss << msg; return *this;}
    ~DEBUG_LOG();
private:
    std::stringstream ss;
};

