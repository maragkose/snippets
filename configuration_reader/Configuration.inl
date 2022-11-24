//
// Following macro define the configuration variables that are used in the application.
// 
// DECLARE_CONFIGURATION(category, type, function name, default value)
//
//
DECLARE_CONFIGURATION(string, mystring,      "hello")
DECLARE_CONFIGURATION(int,    myint,         4      )
DECLARE_CONFIGURATION(bool,   mybool,        true   )
// 
// DECLARE_ENVIRONMENT_MAP(category, type, function name, environment name)
//
//DECLARE_ENVIRONMENT_MAP(app_config, std::string, String, etcd_address, ETCD_ADDR)
