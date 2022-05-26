// Generated by the gRPC C++ plugin.
// If you make any local change, they will be lost.
// source: kv.proto
#ifndef GRPC_kv_2eproto__INCLUDED
#define GRPC_kv_2eproto__INCLUDED

#include "kv.pb.h"

#include <grpc++/impl/codegen/async_stream.h>
#include <grpc++/impl/codegen/async_unary_call.h>
#include <grpc++/impl/codegen/method_handler_impl.h>
#include <grpc++/impl/codegen/proto_utils.h>
#include <grpc++/impl/codegen/rpc_method.h>
#include <grpc++/impl/codegen/service_type.h>
#include <grpc++/impl/codegen/status.h>
#include <grpc++/impl/codegen/stub_options.h>
#include <grpc++/impl/codegen/sync_stream.h>

namespace grpc {
class CompletionQueue;
class Channel;
class ServerCompletionQueue;
class ServerContext;
}  // namespace grpc

namespace ss7config {

class Config final {
 public:
  static constexpr char const* service_full_name() {
    return "ss7config.Config";
  }
  class StubInterface {
   public:
    virtual ~StubInterface() {}
    virtual ::grpc::Status GetConfig(::grpc::ClientContext* context, const ::ss7config::Empty& request, ::ss7config::ss7Config* response) = 0;
    std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::ss7config::ss7Config>> AsyncGetConfig(::grpc::ClientContext* context, const ::ss7config::Empty& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::ss7config::ss7Config>>(AsyncGetConfigRaw(context, request, cq));
    }
    std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::ss7config::ss7Config>> PrepareAsyncGetConfig(::grpc::ClientContext* context, const ::ss7config::Empty& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::ss7config::ss7Config>>(PrepareAsyncGetConfigRaw(context, request, cq));
    }
  private:
    virtual ::grpc::ClientAsyncResponseReaderInterface< ::ss7config::ss7Config>* AsyncGetConfigRaw(::grpc::ClientContext* context, const ::ss7config::Empty& request, ::grpc::CompletionQueue* cq) = 0;
    virtual ::grpc::ClientAsyncResponseReaderInterface< ::ss7config::ss7Config>* PrepareAsyncGetConfigRaw(::grpc::ClientContext* context, const ::ss7config::Empty& request, ::grpc::CompletionQueue* cq) = 0;
  };
  class Stub final : public StubInterface {
   public:
    Stub(const std::shared_ptr< ::grpc::ChannelInterface>& channel);
    ::grpc::Status GetConfig(::grpc::ClientContext* context, const ::ss7config::Empty& request, ::ss7config::ss7Config* response) override;
    std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::ss7config::ss7Config>> AsyncGetConfig(::grpc::ClientContext* context, const ::ss7config::Empty& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::ss7config::ss7Config>>(AsyncGetConfigRaw(context, request, cq));
    }
    std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::ss7config::ss7Config>> PrepareAsyncGetConfig(::grpc::ClientContext* context, const ::ss7config::Empty& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::ss7config::ss7Config>>(PrepareAsyncGetConfigRaw(context, request, cq));
    }

   private:
    std::shared_ptr< ::grpc::ChannelInterface> channel_;
    ::grpc::ClientAsyncResponseReader< ::ss7config::ss7Config>* AsyncGetConfigRaw(::grpc::ClientContext* context, const ::ss7config::Empty& request, ::grpc::CompletionQueue* cq) override;
    ::grpc::ClientAsyncResponseReader< ::ss7config::ss7Config>* PrepareAsyncGetConfigRaw(::grpc::ClientContext* context, const ::ss7config::Empty& request, ::grpc::CompletionQueue* cq) override;
    const ::grpc::internal::RpcMethod rpcmethod_GetConfig_;
  };
  static std::unique_ptr<Stub> NewStub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options = ::grpc::StubOptions());

  class Service : public ::grpc::Service {
   public:
    Service();
    virtual ~Service();
    virtual ::grpc::Status GetConfig(::grpc::ServerContext* context, const ::ss7config::Empty* request, ::ss7config::ss7Config* response);
  };
  template <class BaseClass>
  class WithAsyncMethod_GetConfig : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service *service) {}
   public:
    WithAsyncMethod_GetConfig() {
      ::grpc::Service::MarkMethodAsync(0);
    }
    ~WithAsyncMethod_GetConfig() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status GetConfig(::grpc::ServerContext* context, const ::ss7config::Empty* request, ::ss7config::ss7Config* response) final override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    void RequestGetConfig(::grpc::ServerContext* context, ::ss7config::Empty* request, ::grpc::ServerAsyncResponseWriter< ::ss7config::ss7Config>* response, ::grpc::CompletionQueue* new_call_cq, ::grpc::ServerCompletionQueue* notification_cq, void *tag) {
      ::grpc::Service::RequestAsyncUnary(0, context, request, response, new_call_cq, notification_cq, tag);
    }
  };
  typedef WithAsyncMethod_GetConfig<Service > AsyncService;
  template <class BaseClass>
  class WithGenericMethod_GetConfig : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service *service) {}
   public:
    WithGenericMethod_GetConfig() {
      ::grpc::Service::MarkMethodGeneric(0);
    }
    ~WithGenericMethod_GetConfig() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status GetConfig(::grpc::ServerContext* context, const ::ss7config::Empty* request, ::ss7config::ss7Config* response) final override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
  };
  template <class BaseClass>
  class WithStreamedUnaryMethod_GetConfig : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service *service) {}
   public:
    WithStreamedUnaryMethod_GetConfig() {
      ::grpc::Service::MarkMethodStreamed(0,
        new ::grpc::internal::StreamedUnaryHandler< ::ss7config::Empty, ::ss7config::ss7Config>(std::bind(&WithStreamedUnaryMethod_GetConfig<BaseClass>::StreamedGetConfig, this, std::placeholders::_1, std::placeholders::_2)));
    }
    ~WithStreamedUnaryMethod_GetConfig() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable regular version of this method
    ::grpc::Status GetConfig(::grpc::ServerContext* context, const ::ss7config::Empty* request, ::ss7config::ss7Config* response) final override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    // replace default version of method with streamed unary
    virtual ::grpc::Status StreamedGetConfig(::grpc::ServerContext* context, ::grpc::ServerUnaryStreamer< ::ss7config::Empty,::ss7config::ss7Config>* server_unary_streamer) = 0;
  };
  typedef WithStreamedUnaryMethod_GetConfig<Service > StreamedUnaryService;
  typedef Service SplitStreamedService;
  typedef WithStreamedUnaryMethod_GetConfig<Service > StreamedService;
};

}  // namespace ss7config


#endif  // GRPC_kv_2eproto__INCLUDED