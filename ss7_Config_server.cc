#include <string>

#include <grpc++/grpc++.h>
#include "kv.grpc.pb.h"

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;
using ss7config::Empty;
using ss7config::Config;
using ss7config::KVs;
using ss7config::ConfigItem;
using ss7config::ConfigGroup;
using ss7config::ss7Config;
using ss7config::Event;

// Logic and data behind the server's behavior.
class ConfigServiceImpl final : public Config::Service {
  Status GetConfig(ServerContext* context, const Empty* request,
                  ss7Config* config_reply) override {

    // std::string prefix("Hello ");
    //reply->set_message(prefix + request->name());
    return Status::OK;
  }
};

void RunServer() {
  std::string server_address("0.0.0.0:50051");
  ConfigServiceImpl service;

  ServerBuilder builder;
  // Listen on the given address without any authentication mechanism.
  builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
  // Register "service" as the instance through which we'll communicate with
  // clients. In this case it corresponds to an *synchronous* service.
  builder.RegisterService(&service);
  // Finally assemble the server.
  std::unique_ptr<Server> server(builder.BuildAndStart());
  std::cout << "Server listening on " << server_address << std::endl;

  // Wait for the server to shutdown. Note that some other thread must be
  // responsible for shutting down the server for this call to ever return.
  server->Wait();
}


int main(int argc, char** argv) {
  RunServer();

  return 0;
}

