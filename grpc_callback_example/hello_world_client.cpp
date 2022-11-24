#include <chrono>
#include <iostream>
#include <memory>
#include <random>
#include <string>
#include <thread>

#include <grpc/grpc.h>
#include <grpcpp/channel.h>
#include <grpcpp/client_context.h>
#include <grpcpp/create_channel.h>
#include <grpcpp/security/credentials.h>
#include "hello_world.grpc.pb.h"

using grpc::Channel;
using grpc::ClientContext;
using grpc::ClientReader;
using grpc::ClientReaderWriter;
using grpc::ClientWriter;
using grpc::Status;
using HW::HelloNote;
using HW::HelloWorld;

HelloNote MakeHelloNote(const std::string& message) {
  HelloNote n;
  n.set_message(message);
  return n;
}

class HelloWorldClient {
 public:
  HelloWorldClient(std::shared_ptr<Channel> channel)
      : stub_(HelloWorld::NewStub(channel)) {
  }

  void Chat() {
    ClientContext context;

    std::shared_ptr<ClientReaderWriter<HelloNote, HelloNote> > stream(
        stub_->Chat(&context));

    std::thread writer([stream]() {
      std::vector<HelloNote> notes{MakeHelloNote("First message"),
                                   MakeHelloNote("Second message"),
                                   MakeHelloNote("Third message"),
                                   MakeHelloNote("Fourth message")};
      for (const HelloNote& note : notes) {
        std::cout << "Sending message " << note.message() << std::endl;
        stream->Write(note);
      }
      stream->WritesDone();
    });

    HelloNote server_note;
    while (stream->Read(&server_note)) {
      std::cout << "Got message " << server_note.message() << std::endl;
    }
    writer.join();
    Status status = stream->Finish();
    if (!status.ok()) {
      std::cout << "Chat rpc failed." << std::endl;
    }
  }

 private:

  std::unique_ptr<HelloWorld::Stub> stub_;
};

int main(int argc, char** argv) {
  // Expect only arg: --db_path=path/to/route_guide_db.json.
  HelloWorldClient guide(
      grpc::CreateChannel("localhost:50051",
                          grpc::InsecureChannelCredentials()));

  std::cout << "-------------- Chat --------------" << std::endl;
  guide.Chat();

  return 0;
}
