//
//adsfasd 
//asdf
DECLARE_CONFIGURATION(string, grpc_server_ip,                   "0.0.0.0")
DECLARE_CONFIGURATION(int,    grpc_server_port,                 50051)
DECLARE_CONFIGURATION(string, redis_cm_ip,                      "localhost")
DECLARE_CONFIGURATION(int,    redis_cm_port,                    6379)
DECLARE_CONFIGURATION(int,    load_change_update_threshold,     5)
DECLARE_CONFIGURATION(int,    watch_clients_max_num,            50)
DECLARE_CONFIGURATION(int,    load_calculation_interval_ms,     1000)
DECLARE_CONFIGURATION(strings, util_report_service_names, "smsf-sms-grpc-service", "smsf-reg-grpc-service" )
