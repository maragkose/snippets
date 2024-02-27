#include <sw/redis++/redis++.h>
#include <iostream>

class RedisConsumer {
public:
    RedisConsumer(const std::string& redisHost, int redisPort)
        : redis("tcp://" + redisHost + ":" + std::to_string(redisPort)) {}

    // Consume data from the "cache-updates" stream using the "main" consumer group
    void consumeData() {

        //using Attrs = std::vector<std::pair<std::string, std::string>>;
        //using Item = std::pair<std::string, sw::redis::Optional<Attrs>>;
        //using ItemStream = std::vector<Item>;
        //std::unordered_map<std::string, ItemStream> result;
        
        using Attrs = std::unordered_map<std::string, std::string>;
        //using Item = std::pair<std::string, sw::redis::Optional<Attrs>>;
        using ItemStream = std::unordered_map<std::string, Attrs>;
        std::unordered_map<std::string, ItemStream> result;

        // Create the "main" consumer group if not exists
        try {
        redis.xgroup_create("cache-updates", "main", "$", true);
        } catch (...) {
            std::cout << "Group already created: " << std::endl;
        }

        // Continuously consume data from the "cache-updates" stream within the "main" consumer group
        while (true) {
            // Read data from the stream
            redis.xreadgroup("main", "consumer", "cache-updates", "0", 1, std::inserter(result, result.end()));


            // Process each entry
            /*
            for (const auto& item_stream : result) {
                for (const auto& item : item_stream.second) {
                    std::cout << item.first << ":" <<  std::endl;
                    redis.xack("cache-updates", "main", item.first);
                    for(const auto& kv: *(item.second)) {
                        std::cout << "--" << kv.first  << ":" << kv.second << std::endl;

                    }
                }
            }
            result.clear();
            */
            for(const auto & item_stream : result) {
                std::cout << item_stream.first << std::endl;
                for (const auto & item : item_stream.second) {
                    std::cout << item.first << std::endl;
                    //redis.xack("cache-updates", "main", item.first);
                    std::cout << "supi:" << item.second.at("supi") << std::endl;
                    std::cout << "prio:" << item.second.at("priority") << std::endl;
                    std::cout << "validity:" << item.second.at("validity") << std::endl;
                }
            }
            result.clear();

            using PendingItem = std::tuple<std::string, std::string, long long, long long>;
            std::vector<PendingItem> pending_items;
                std::this_thread::sleep_for(std::chrono::milliseconds(1000));
            // Get pending items of a speicified consumer.
            //redis.xpending("cache-updates", "main", "-", "+", 1, "consumer", std::back_inserter(pending_items));
            //for(auto &p: pending_items) {
            //    std::cout << std::get<0>(p) << std::endl;
            //    std::cout << std::get<1>(p) << std::endl;
            //    std::cout << std::get<2>(p) << std::endl;
            //    std::cout << std::get<3>(p) << std::endl;
            //}
        }
    }

private:
    sw::redis::Redis redis;

    // Example processing logic
    void processMessage(const std::string& supi, const std::string& priority) {
        // Example: Print the received supi and priority
        std::cout << "Received: supi = " << supi << ", priority = " << priority << std::endl;
    }
};

int main() {
    RedisConsumer redisConsumer("localhost", 6379);

    // Start consuming data from the "cache-updates" stream within the "main" consumer group
    redisConsumer.consumeData();

    return 0;
}

