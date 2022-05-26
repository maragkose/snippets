// Generated by the gRPC C++ plugin.
// If you make any local change, they will be lost.
// source: sessiond.proto

#include "sessiond.pb.h"
#include "sessiond.grpc.pb.h"

#include <grpc++/impl/codegen/async_stream.h>
#include <grpc++/impl/codegen/async_unary_call.h>
#include <grpc++/impl/codegen/channel_interface.h>
#include <grpc++/impl/codegen/client_unary_call.h>
#include <grpc++/impl/codegen/method_handler_impl.h>
#include <grpc++/impl/codegen/rpc_service_method.h>
#include <grpc++/impl/codegen/service_type.h>
#include <grpc++/impl/codegen/sync_stream.h>
namespace sessiond {

static const char* Watch_method_names[] = {
  "/sessiond.Watch/watchKill",
};

std::unique_ptr< Watch::Stub> Watch::NewStub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options) {
  std::unique_ptr< Watch::Stub> stub(new Watch::Stub(channel));
  return stub;
}

Watch::Stub::Stub(const std::shared_ptr< ::grpc::ChannelInterface>& channel)
  : channel_(channel), rpcmethod_watchKill_(Watch_method_names[0], ::grpc::RpcMethod::BIDI_STREAMING, channel)
  {}

::grpc::ClientReaderWriter< ::sessiond::sessionRequest, ::sessiond::sessionResponse>* Watch::Stub::watchKillRaw(::grpc::ClientContext* context) {
  return new ::grpc::ClientReaderWriter< ::sessiond::sessionRequest, ::sessiond::sessionResponse>(channel_.get(), rpcmethod_watchKill_, context);
}

::grpc::ClientAsyncReaderWriter< ::sessiond::sessionRequest, ::sessiond::sessionResponse>* Watch::Stub::AsyncwatchKillRaw(::grpc::ClientContext* context, ::grpc::CompletionQueue* cq, void* tag) {
  return ::grpc::ClientAsyncReaderWriter< ::sessiond::sessionRequest, ::sessiond::sessionResponse>::Create(channel_.get(), cq, rpcmethod_watchKill_, context, tag);
}

Watch::Service::Service() {
  AddMethod(new ::grpc::RpcServiceMethod(
      Watch_method_names[0],
      ::grpc::RpcMethod::BIDI_STREAMING,
      new ::grpc::BidiStreamingHandler< Watch::Service, ::sessiond::sessionRequest, ::sessiond::sessionResponse>(
          std::mem_fn(&Watch::Service::watchKill), this)));
}

Watch::Service::~Service() {
}

::grpc::Status Watch::Service::watchKill(::grpc::ServerContext* context, ::grpc::ServerReaderWriter< ::sessiond::sessionResponse, ::sessiond::sessionRequest>* stream) {
  (void) context;
  (void) stream;
  return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
}


}  // namespace sessiond

