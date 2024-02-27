#include <sw/redis++/redis++.h>
#include <iostream>

class RedisPublisher {
public:
    RedisPublisher(const std::string& redisHost, int redisPort)
        : redis(std::string("tcp://") + redisHost + ":" + std::to_string(redisPort)) {}

    // Publish data to the "cache-updates" stream
    void publishData(const std::string& supi, int priority) {
        // Publish the supi and priority as key-value pairs to the "cache-updates" stream
        using Attrs = std::vector<std::pair<std::string, std::string>>;
        Attrs attrs = { {"supi", "5921342349234"}, {"priority", "10"}, {"validity", "1231231231"} };

        redis.xadd("cache-updates", "*", attrs.begin(), attrs.end());
    }

private:
    sw::redis::Redis redis;
};

int main() {
    // Replace "your_redis_host" and "your_redis_port" with your Redis server details
    RedisPublisher redisPublisher("localhost", 6379);
 //   RedisConsumer redisConsumer("localhost", 6379);

    // Example data: supi = "123123123", priority = 10
    redisPublisher.publishData("123123123", 10);

    // Start consuming data from the "cache-updates" stream within the "main" consumer group
  //  redisConsumer.consumeData();

    return 0;
}

