#include <iostream>
#include <memory>
#include <string>
#include <thread>

#include <grpc++/grpc++.h>
#include <grpc/support/log.h>

#include "sessiond.grpc.pb.h"

using grpc::Channel;
using grpc::ClientAsyncReaderWriter;
using grpc::ClientContext;
using grpc::CompletionQueue;
using grpc::Status;
using sessiond::sessionRequest;
using sessiond::sessionResponse;
using sessiond::Watch;

// NOTE: This is a complex example for an asynchronous, bidirectional streaming
// client. For a simpler example, start with the
// greeter_client/greeter_async_client first.
class AsyncBidiGreeterClient {
  enum class Type {
    READ = 1,
    WRITE = 2,
    CONNECT = 3,
    WRITES_DONE = 4,
    FINISH = 5
  };

 public:
  explicit AsyncBidiGreeterClient(std::shared_ptr<Channel> channel)
      : stub_(Watch::NewStub(channel)) {
    grpc_thread_.reset(
        new std::thread(std::bind(&AsyncBidiGreeterClient::GrpcThread, this)));
    stream_ = stub_->AsyncwatchKill(&context_, &cq_,
                                   reinterpret_cast<void*>(Type::CONNECT));
  }

  // Similar to the async hello example in greeter_async_client but does not
  // wait for the response. Instead queues up a tag in the completion queue
  // that is notified when the server responds back (or when the stream is
  // closed). Returns false when the stream is requested to be closed.
  bool AsyncwatchKill(const std::string& user) {
    if (user == "quit") {
      stream_->WritesDone(reinterpret_cast<void*>(Type::WRITES_DONE));
      return false;
    }

    // Data we are sending to the server.
    sessionRequest request;
    request.set_username(user);

    // This is important: You can have at most one write or at most one read
    // at any given time. The throttling is performed by gRPC completion
    // queue. If you queue more than one write/read, the stream will crash.
    // Because this stream is bidirectional, you *can* have a single read
    // and a single write request queued for the same stream. Writes and reads
    // are independent of each other in terms of ordering/delivery.
    std::cout << " ** Sending request: " << user << std::endl;
    stream_->Write(request, reinterpret_cast<void*>(Type::WRITE));
    return true;
  }

  ~AsyncBidiGreeterClient() {
    std::cout << "Shutting down client...." << std::endl;
    grpc::Status status;
    cq_.Shutdown();
    grpc_thread_->join();
  }

 private:
  void AsyncsessionRequestNextMessage() {
    std::cout << " ** Got response: " << response_.session_id() << std::endl;

    // The tag is the link between our thread (main thread) and the completion
    // queue thread. The tag allows the completion queue to fan off
    // notification handlers for the specified read/write requests as they
    // are being processed by gRPC.
    stream_->Read(&response_, reinterpret_cast<void*>(Type::READ));
  }

  // Runs a gRPC completion-queue processing thread. Checks for 'Next' tag
  // and processes them until there are no more (or when the completion queue
  // is shutdown).
  void GrpcThread() {
    while (true) {
      void* got_tag;
      bool ok = false;
      // Block until the next result is available in the completion queue "cq".
      // The return value of Next should always be checked. This return value
      // tells us whether there is any kind of event or the cq_ is shutting
      // down.
      if (!cq_.Next(&got_tag, &ok)) {
        std::cerr << "Client stream closed. Quitting" << std::endl;
        break;
      }

      // It's important to process all tags even if the ok is false. One might
      // want to deallocate memory that has be reinterpret_cast'ed to void*
      // when the tag got initialized. For our example, we cast an int to a
      // void*, so we don't have extra memory management to take care of.
      if (ok) {
        std::cout << std::endl
                  << "**** Processing completion queue tag " << got_tag
                  << std::endl;
        switch (static_cast<Type>(reinterpret_cast<long>(got_tag))) {
          case Type::READ:
            std::cout << "Read a new message." << std::endl;
            break;
          case Type::WRITE:
            std::cout << "Sending message (async)." << std::endl;
            AsyncsessionRequestNextMessage();
            break;
          case Type::CONNECT:
            std::cout << "Server connected." << std::endl;
            break;
          case Type::WRITES_DONE:
            std::cout << "Server disconnecting." << std::endl;
            break;
          case Type::FINISH:
            std::cout << "Client finish; status = "
                      << (finish_status_.ok() ? "ok" : "cancelled")
                      << std::endl;
            context_.TryCancel();
            cq_.Shutdown();
            break;
          default:
            std::cerr << "Unexpected tag " << got_tag << std::endl;
            GPR_ASSERT(false);
        }
      }
    }
  }

  // Context for the client. It could be used to convey extra information to
  // the server and/or tweak certain RPC behaviors.
  ClientContext context_;

  // The producer-consumer queue we use to communicate asynchronously with the
  // gRPC runtime.
  CompletionQueue cq_;

  // Out of the passed in Channel comes the stub, stored here, our view of the
  // server's exposed services.
  std::unique_ptr<Watch::Stub> stub_;

  // The bidirectional, asynchronous stream for sending/receiving messages.
  std::unique_ptr<ClientAsyncReaderWriter<sessionRequest, sessionResponse>> stream_;

  // Allocated protobuf that holds the response. In real clients and servers,
  // the memory management would a bit more complex as the thread that fills
  // in the response should take care of concurrency as well as memory
  // management.
  sessionResponse response_;

  // Thread that notifies the gRPC completion queue tags.
  std::unique_ptr<std::thread> grpc_thread_;

  // Finish status when the client is done with the stream.
  grpc::Status finish_status_ = grpc::Status::OK;
};

int main(int argc, char** argv) {
  AsyncBidiGreeterClient greeter(grpc::CreateChannel(
      "localhost:50051", grpc::InsecureChannelCredentials()));

  std::string text;
  while (true) {
    std::cout << "Enter text (type quit to end): ";
    std::cin >> text;

    // Async RPC call that sends a message and awaits a response.
    if (!greeter.AsyncwatchKill(text)) {
      std::cout << "Quitting." << std::endl;
      break;
    }
  }
  return 0;
}
