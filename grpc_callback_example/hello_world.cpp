#include <algorithm>
#include <chrono>
#include <cmath>
#include <iostream>
#include <memory>
#include <string>
#include <thread>

#include <grpcpp/grpcpp.h>
#include <grpcpp/ext/proto_server_reflection_plugin.h>
#include "hello_world.grpc.pb.h"

using grpc::CallbackServerContext;
using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerBidiReactor;
using grpc::Status;
using HW::HelloNote;
using HW::HelloWorld;
using std::chrono::system_clock;

class HelloWorldImpl final : public HelloWorld::CallbackService {
 public:

  grpc::ServerBidiReactor<HelloNote, HelloNote>* Chat(CallbackServerContext* context) override {

    class Chatter : public grpc::ServerBidiReactor<HelloNote, HelloNote> {
     public:
      Chatter(absl::Mutex* mu, std::vector<HelloNote>* received_notes)
          : mu_(mu), received_notes_(received_notes) {
        StartRead(&note_);
      }
      void OnDone() override { delete this; }
      void OnReadDone(bool ok) override {
        if (ok) {
          // Unlike the other example in this directory that's not using
          // the reactor pattern, we can't grab a local lock to secure the
          // access to the notes vector, because the reactor will most likely
          // make us jump threads, so we'll have to use a different locking
          // strategy. We'll grab the lock locally to build a copy of the
          // list of nodes we're going to send, then we'll grab the lock
          // again to append the received note to the existing vector.
          mu_->Lock();
          std::cout << "OnReadDone: " << note_.message() << std::endl;
          mu_->Unlock();
          notes_iterator_ = to_send_notes_.begin();
          NextWrite();
        } else {
          Finish(Status::OK);
        }
      }
      void OnWriteDone(bool /*ok*/) override { NextWrite(); }

     private:
      void NextWrite() {
        if (notes_iterator_ != to_send_notes_.end()) {
          StartWrite(&*notes_iterator_);
          notes_iterator_++;
        } else {
          mu_->Lock();
          received_notes_->push_back(note_);
          mu_->Unlock();
          StartRead(&note_);
        }
      }
      HelloNote note_;
      absl::Mutex* mu_;
      std::vector<HelloNote>* received_notes_;
      std::vector<HelloNote> to_send_notes_;
      std::vector<HelloNote>::iterator notes_iterator_;
    };
    return new Chatter(&mu_, &received_notes_);
  }

 private:
  absl::Mutex mu_;
  std::vector<HelloNote> received_notes_ ABSL_GUARDED_BY(mu_);
};

void RunServer() {
  std::string server_address("0.0.0.0:50051");
  HelloWorldImpl service;

  ServerBuilder builder;
  builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
  builder.RegisterService(&service);
  std::unique_ptr<Server> server(builder.BuildAndStart());
  std::cout << "Server listening on " << server_address << std::endl;
  server->Wait();
}

int main(int argc, char** argv) {
  // Expect only arg: --db_path=path/to/route_guide_db.json.
  RunServer();

  return 0;
}
