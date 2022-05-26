#include <iostream>
#include <memory>
#include <string>
#include <map>

#include <grpc++/grpc++.h>
#include "kv.grpc.pb.h"

using grpc::Channel;
using grpc::ClientContext;
using grpc::Status;
using ss7config::Empty;
using ss7config::Config;
using ss7config::KVs;
using ss7config::ConfigItem;
using ss7config::ConfigGroup;
using ss7config::ss7Config;
using ss7config::Event;

class ss7ConfigClient {
 public:
  ss7ConfigClient(std::shared_ptr<Channel> channel)
      : stub_(Config::NewStub(channel)) {}

  // Assembles the client's payload, sends it and presents the response back
  // from the server.
  auto GetConfig() {
    // Data we are sending to the server.
    Empty empty;
    ss7Config config_reply;

    // Context for the client. It could be used to convey extra information to
    // the server and/or tweak certain RPC behaviors.
    ClientContext context;

    // The actual RPC.
    Status status = stub_->GetConfig(&context, empty, &config_reply);

    // Act upon its status.
    if (status.ok()) {
      return config_reply.ss7_config();
    } else {
      std::cout << status.error_code() << ": " << status.error_message()
                << std::endl;
    }
  }
 private:
  std::unique_ptr<Config::Stub> stub_;
};

int main(int argc, char** argv) {
  // Instantiate the client. It requires a channel, out of which the actual RPCs
  // are created. This channel models a connection to an endpoint (in this case,
  // localhost at port 50051). We indicate that the channel isn't authenticated
  // (use of InsecureChannelCredentials()).
  ss7ConfigClient configClient(grpc::CreateChannel("localhost:50051", grpc::InsecureChannelCredentials()));

  auto reply  = configClient.GetConfig();
  std::cout << "Greeter received: " <<  std::endl;

  return 0;
}

