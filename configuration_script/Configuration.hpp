#ifndef CONFIGURATION
#define CONFIGURATION

#include <algorithm>
#include <string>

#include "ConfigurationBase.hpp"
#include "Logging.hpp"

class Configuration : public ConfigurationBase {

public:

    Configuration(const std::string& filename) : ConfigurationBase(filename) {

        set_defaults();
        read_file(filename);
        read_env();

    }
    Configuration() : ConfigurationBase() {

        set_defaults();
        read_env();

    }

    void set_grpc_server_ip(const std::string &value) {
        set<std::string>("grpc_server_ip", value);
    }

    const std::string grpc_server_ip() {
        return get<std::string>("grpc_server_ip");
    }

    void set_grpc_server_port(int value) {
        set<int>("grpc_server_port", value);
    }

    int grpc_server_port() {
        return get<int>("grpc_server_port");
    }

    void set_redis_cm_ip(const std::string &value) {
        set<std::string>("redis_cm_ip", value);
    }

    const std::string redis_cm_ip() {
        return get<std::string>("redis_cm_ip");
    }

    void set_redis_cm_port(int value) {
        set<int>("redis_cm_port", value);
    }

    int redis_cm_port() {
        return get<int>("redis_cm_port");
    }

    void set_load_change_update_threshold(int value) {
        set<int>("load_change_update_threshold", value);
    }

    int load_change_update_threshold() {
        return get<int>("load_change_update_threshold");
    }

    void set_watch_clients_max_num(int value) {
        set<int>("watch_clients_max_num", value);
    }

    int watch_clients_max_num() {
        return get<int>("watch_clients_max_num");
    }

    void set_load_calculation_interval_ms(int value) {
        set<int>("load_calculation_interval_ms", value);
    }

    int load_calculation_interval_ms() {
        return get<int>("load_calculation_interval_ms");
    }

    void set_util_report_service_names(std::vector<std::string> value) {
        set<std::vector<std::string>>("util_report_service_names", value);
    }

    std::vector<std::string> util_report_service_names() {
        return get<std::vector<std::string>>("util_report_service_names");
    }


    void set_defaults() {
        set_grpc_server_ip("0.0.0.0");
        set_grpc_server_port(50051);
        set_redis_cm_ip("localhost");
        set_redis_cm_port(6379);
        set_load_change_update_threshold(5);
        set_watch_clients_max_num(50);
        set_load_calculation_interval_ms(1000);
        set_util_report_service_names(std::vector<std::string> {"smsf-sms-grpc-service", "smsf-reg-grpc-service"});
    }

    void print() override {
        TRACE("grpc_server_ip: " << grpc_server_ip());
        TRACE("grpc_server_port: " << grpc_server_port());
        TRACE("redis_cm_ip: " << redis_cm_ip());
        TRACE("redis_cm_port: " << redis_cm_port());
        TRACE("load_change_update_threshold: " << load_change_update_threshold());
        TRACE("watch_clients_max_num: " << watch_clients_max_num());
        TRACE("load_calculation_interval_ms: " << load_calculation_interval_ms());
        for(const auto &value : util_report_service_names()){
            TRACE("util_report_service_names: " <<  value);
        }
    }

};

#endif // CONFIGURATION
