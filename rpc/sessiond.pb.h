// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: sessiond.proto

#ifndef PROTOBUF_sessiond_2eproto__INCLUDED
#define PROTOBUF_sessiond_2eproto__INCLUDED

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 3004000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 3004000 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/arena.h>
#include <google/protobuf/arenastring.h>
#include <google/protobuf/generated_message_table_driven.h>
#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/metadata.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>  // IWYU pragma: export
#include <google/protobuf/extension_set.h>  // IWYU pragma: export
#include <google/protobuf/unknown_field_set.h>
// @@protoc_insertion_point(includes)
namespace sessiond {
class sessionRequest;
class sessionRequestDefaultTypeInternal;
extern sessionRequestDefaultTypeInternal _sessionRequest_default_instance_;
class sessionResponse;
class sessionResponseDefaultTypeInternal;
extern sessionResponseDefaultTypeInternal _sessionResponse_default_instance_;
}  // namespace sessiond

namespace sessiond {

namespace protobuf_sessiond_2eproto {
// Internal implementation detail -- do not call these.
struct TableStruct {
  static const ::google::protobuf::internal::ParseTableField entries[];
  static const ::google::protobuf::internal::AuxillaryParseTableField aux[];
  static const ::google::protobuf::internal::ParseTable schema[];
  static const ::google::protobuf::uint32 offsets[];
  static const ::google::protobuf::internal::FieldMetadata field_metadata[];
  static const ::google::protobuf::internal::SerializationTable serialization_table[];
  static void InitDefaultsImpl();
};
void AddDescriptors();
void InitDefaults();
}  // namespace protobuf_sessiond_2eproto

// ===================================================================

class sessionRequest : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:sessiond.sessionRequest) */ {
 public:
  sessionRequest();
  virtual ~sessionRequest();

  sessionRequest(const sessionRequest& from);

  inline sessionRequest& operator=(const sessionRequest& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  sessionRequest(sessionRequest&& from) noexcept
    : sessionRequest() {
    *this = ::std::move(from);
  }

  inline sessionRequest& operator=(sessionRequest&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  static const ::google::protobuf::Descriptor* descriptor();
  static const sessionRequest& default_instance();

  static inline const sessionRequest* internal_default_instance() {
    return reinterpret_cast<const sessionRequest*>(
               &_sessionRequest_default_instance_);
  }
  static PROTOBUF_CONSTEXPR int const kIndexInFileMessages =
    0;

  void Swap(sessionRequest* other);
  friend void swap(sessionRequest& a, sessionRequest& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline sessionRequest* New() const PROTOBUF_FINAL { return New(NULL); }

  sessionRequest* New(::google::protobuf::Arena* arena) const PROTOBUF_FINAL;
  void CopyFrom(const ::google::protobuf::Message& from) PROTOBUF_FINAL;
  void MergeFrom(const ::google::protobuf::Message& from) PROTOBUF_FINAL;
  void CopyFrom(const sessionRequest& from);
  void MergeFrom(const sessionRequest& from);
  void Clear() PROTOBUF_FINAL;
  bool IsInitialized() const PROTOBUF_FINAL;

  size_t ByteSizeLong() const PROTOBUF_FINAL;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input) PROTOBUF_FINAL;
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const PROTOBUF_FINAL;
  ::google::protobuf::uint8* InternalSerializeWithCachedSizesToArray(
      bool deterministic, ::google::protobuf::uint8* target) const PROTOBUF_FINAL;
  int GetCachedSize() const PROTOBUF_FINAL { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const PROTOBUF_FINAL;
  void InternalSwap(sessionRequest* other);
  private:
  inline ::google::protobuf::Arena* GetArenaNoVirtual() const {
    return NULL;
  }
  inline void* MaybeArenaPtr() const {
    return NULL;
  }
  public:

  ::google::protobuf::Metadata GetMetadata() const PROTOBUF_FINAL;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // string username = 1;
  void clear_username();
  static const int kUsernameFieldNumber = 1;
  const ::std::string& username() const;
  void set_username(const ::std::string& value);
  #if LANG_CXX11
  void set_username(::std::string&& value);
  #endif
  void set_username(const char* value);
  void set_username(const char* value, size_t size);
  ::std::string* mutable_username();
  ::std::string* release_username();
  void set_allocated_username(::std::string* username);

  // string session_id = 2;
  void clear_session_id();
  static const int kSessionIdFieldNumber = 2;
  const ::std::string& session_id() const;
  void set_session_id(const ::std::string& value);
  #if LANG_CXX11
  void set_session_id(::std::string&& value);
  #endif
  void set_session_id(const char* value);
  void set_session_id(const char* value, size_t size);
  ::std::string* mutable_session_id();
  ::std::string* release_session_id();
  void set_allocated_session_id(::std::string* session_id);

  // string watch_duration = 3;
  void clear_watch_duration();
  static const int kWatchDurationFieldNumber = 3;
  const ::std::string& watch_duration() const;
  void set_watch_duration(const ::std::string& value);
  #if LANG_CXX11
  void set_watch_duration(::std::string&& value);
  #endif
  void set_watch_duration(const char* value);
  void set_watch_duration(const char* value, size_t size);
  ::std::string* mutable_watch_duration();
  ::std::string* release_watch_duration();
  void set_allocated_watch_duration(::std::string* watch_duration);

  // @@protoc_insertion_point(class_scope:sessiond.sessionRequest)
 private:

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::google::protobuf::internal::ArenaStringPtr username_;
  ::google::protobuf::internal::ArenaStringPtr session_id_;
  ::google::protobuf::internal::ArenaStringPtr watch_duration_;
  mutable int _cached_size_;
  friend struct protobuf_sessiond_2eproto::TableStruct;
};
// -------------------------------------------------------------------

class sessionResponse : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:sessiond.sessionResponse) */ {
 public:
  sessionResponse();
  virtual ~sessionResponse();

  sessionResponse(const sessionResponse& from);

  inline sessionResponse& operator=(const sessionResponse& from) {
    CopyFrom(from);
    return *this;
  }
  #if LANG_CXX11
  sessionResponse(sessionResponse&& from) noexcept
    : sessionResponse() {
    *this = ::std::move(from);
  }

  inline sessionResponse& operator=(sessionResponse&& from) noexcept {
    if (GetArenaNoVirtual() == from.GetArenaNoVirtual()) {
      if (this != &from) InternalSwap(&from);
    } else {
      CopyFrom(from);
    }
    return *this;
  }
  #endif
  static const ::google::protobuf::Descriptor* descriptor();
  static const sessionResponse& default_instance();

  static inline const sessionResponse* internal_default_instance() {
    return reinterpret_cast<const sessionResponse*>(
               &_sessionResponse_default_instance_);
  }
  static PROTOBUF_CONSTEXPR int const kIndexInFileMessages =
    1;

  void Swap(sessionResponse* other);
  friend void swap(sessionResponse& a, sessionResponse& b) {
    a.Swap(&b);
  }

  // implements Message ----------------------------------------------

  inline sessionResponse* New() const PROTOBUF_FINAL { return New(NULL); }

  sessionResponse* New(::google::protobuf::Arena* arena) const PROTOBUF_FINAL;
  void CopyFrom(const ::google::protobuf::Message& from) PROTOBUF_FINAL;
  void MergeFrom(const ::google::protobuf::Message& from) PROTOBUF_FINAL;
  void CopyFrom(const sessionResponse& from);
  void MergeFrom(const sessionResponse& from);
  void Clear() PROTOBUF_FINAL;
  bool IsInitialized() const PROTOBUF_FINAL;

  size_t ByteSizeLong() const PROTOBUF_FINAL;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input) PROTOBUF_FINAL;
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const PROTOBUF_FINAL;
  ::google::protobuf::uint8* InternalSerializeWithCachedSizesToArray(
      bool deterministic, ::google::protobuf::uint8* target) const PROTOBUF_FINAL;
  int GetCachedSize() const PROTOBUF_FINAL { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const PROTOBUF_FINAL;
  void InternalSwap(sessionResponse* other);
  private:
  inline ::google::protobuf::Arena* GetArenaNoVirtual() const {
    return NULL;
  }
  inline void* MaybeArenaPtr() const {
    return NULL;
  }
  public:

  ::google::protobuf::Metadata GetMetadata() const PROTOBUF_FINAL;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // string username = 1;
  void clear_username();
  static const int kUsernameFieldNumber = 1;
  const ::std::string& username() const;
  void set_username(const ::std::string& value);
  #if LANG_CXX11
  void set_username(::std::string&& value);
  #endif
  void set_username(const char* value);
  void set_username(const char* value, size_t size);
  ::std::string* mutable_username();
  ::std::string* release_username();
  void set_allocated_username(::std::string* username);

  // string session_id = 2;
  void clear_session_id();
  static const int kSessionIdFieldNumber = 2;
  const ::std::string& session_id() const;
  void set_session_id(const ::std::string& value);
  #if LANG_CXX11
  void set_session_id(::std::string&& value);
  #endif
  void set_session_id(const char* value);
  void set_session_id(const char* value, size_t size);
  ::std::string* mutable_session_id();
  ::std::string* release_session_id();
  void set_allocated_session_id(::std::string* session_id);

  // @@protoc_insertion_point(class_scope:sessiond.sessionResponse)
 private:

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::google::protobuf::internal::ArenaStringPtr username_;
  ::google::protobuf::internal::ArenaStringPtr session_id_;
  mutable int _cached_size_;
  friend struct protobuf_sessiond_2eproto::TableStruct;
};
// ===================================================================


// ===================================================================

#if !PROTOBUF_INLINE_NOT_IN_HEADERS
#ifdef __GNUC__
  #pragma GCC diagnostic push
  #pragma GCC diagnostic ignored "-Wstrict-aliasing"
#endif  // __GNUC__
// sessionRequest

// string username = 1;
inline void sessionRequest::clear_username() {
  username_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline const ::std::string& sessionRequest::username() const {
  // @@protoc_insertion_point(field_get:sessiond.sessionRequest.username)
  return username_.GetNoArena();
}
inline void sessionRequest::set_username(const ::std::string& value) {
  
  username_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:sessiond.sessionRequest.username)
}
#if LANG_CXX11
inline void sessionRequest::set_username(::std::string&& value) {
  
  username_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:sessiond.sessionRequest.username)
}
#endif
inline void sessionRequest::set_username(const char* value) {
  GOOGLE_DCHECK(value != NULL);
  
  username_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:sessiond.sessionRequest.username)
}
inline void sessionRequest::set_username(const char* value, size_t size) {
  
  username_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:sessiond.sessionRequest.username)
}
inline ::std::string* sessionRequest::mutable_username() {
  
  // @@protoc_insertion_point(field_mutable:sessiond.sessionRequest.username)
  return username_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* sessionRequest::release_username() {
  // @@protoc_insertion_point(field_release:sessiond.sessionRequest.username)
  
  return username_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void sessionRequest::set_allocated_username(::std::string* username) {
  if (username != NULL) {
    
  } else {
    
  }
  username_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), username);
  // @@protoc_insertion_point(field_set_allocated:sessiond.sessionRequest.username)
}

// string session_id = 2;
inline void sessionRequest::clear_session_id() {
  session_id_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline const ::std::string& sessionRequest::session_id() const {
  // @@protoc_insertion_point(field_get:sessiond.sessionRequest.session_id)
  return session_id_.GetNoArena();
}
inline void sessionRequest::set_session_id(const ::std::string& value) {
  
  session_id_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:sessiond.sessionRequest.session_id)
}
#if LANG_CXX11
inline void sessionRequest::set_session_id(::std::string&& value) {
  
  session_id_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:sessiond.sessionRequest.session_id)
}
#endif
inline void sessionRequest::set_session_id(const char* value) {
  GOOGLE_DCHECK(value != NULL);
  
  session_id_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:sessiond.sessionRequest.session_id)
}
inline void sessionRequest::set_session_id(const char* value, size_t size) {
  
  session_id_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:sessiond.sessionRequest.session_id)
}
inline ::std::string* sessionRequest::mutable_session_id() {
  
  // @@protoc_insertion_point(field_mutable:sessiond.sessionRequest.session_id)
  return session_id_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* sessionRequest::release_session_id() {
  // @@protoc_insertion_point(field_release:sessiond.sessionRequest.session_id)
  
  return session_id_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void sessionRequest::set_allocated_session_id(::std::string* session_id) {
  if (session_id != NULL) {
    
  } else {
    
  }
  session_id_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), session_id);
  // @@protoc_insertion_point(field_set_allocated:sessiond.sessionRequest.session_id)
}

// string watch_duration = 3;
inline void sessionRequest::clear_watch_duration() {
  watch_duration_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline const ::std::string& sessionRequest::watch_duration() const {
  // @@protoc_insertion_point(field_get:sessiond.sessionRequest.watch_duration)
  return watch_duration_.GetNoArena();
}
inline void sessionRequest::set_watch_duration(const ::std::string& value) {
  
  watch_duration_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:sessiond.sessionRequest.watch_duration)
}
#if LANG_CXX11
inline void sessionRequest::set_watch_duration(::std::string&& value) {
  
  watch_duration_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:sessiond.sessionRequest.watch_duration)
}
#endif
inline void sessionRequest::set_watch_duration(const char* value) {
  GOOGLE_DCHECK(value != NULL);
  
  watch_duration_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:sessiond.sessionRequest.watch_duration)
}
inline void sessionRequest::set_watch_duration(const char* value, size_t size) {
  
  watch_duration_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:sessiond.sessionRequest.watch_duration)
}
inline ::std::string* sessionRequest::mutable_watch_duration() {
  
  // @@protoc_insertion_point(field_mutable:sessiond.sessionRequest.watch_duration)
  return watch_duration_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* sessionRequest::release_watch_duration() {
  // @@protoc_insertion_point(field_release:sessiond.sessionRequest.watch_duration)
  
  return watch_duration_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void sessionRequest::set_allocated_watch_duration(::std::string* watch_duration) {
  if (watch_duration != NULL) {
    
  } else {
    
  }
  watch_duration_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), watch_duration);
  // @@protoc_insertion_point(field_set_allocated:sessiond.sessionRequest.watch_duration)
}

// -------------------------------------------------------------------

// sessionResponse

// string username = 1;
inline void sessionResponse::clear_username() {
  username_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline const ::std::string& sessionResponse::username() const {
  // @@protoc_insertion_point(field_get:sessiond.sessionResponse.username)
  return username_.GetNoArena();
}
inline void sessionResponse::set_username(const ::std::string& value) {
  
  username_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:sessiond.sessionResponse.username)
}
#if LANG_CXX11
inline void sessionResponse::set_username(::std::string&& value) {
  
  username_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:sessiond.sessionResponse.username)
}
#endif
inline void sessionResponse::set_username(const char* value) {
  GOOGLE_DCHECK(value != NULL);
  
  username_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:sessiond.sessionResponse.username)
}
inline void sessionResponse::set_username(const char* value, size_t size) {
  
  username_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:sessiond.sessionResponse.username)
}
inline ::std::string* sessionResponse::mutable_username() {
  
  // @@protoc_insertion_point(field_mutable:sessiond.sessionResponse.username)
  return username_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* sessionResponse::release_username() {
  // @@protoc_insertion_point(field_release:sessiond.sessionResponse.username)
  
  return username_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void sessionResponse::set_allocated_username(::std::string* username) {
  if (username != NULL) {
    
  } else {
    
  }
  username_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), username);
  // @@protoc_insertion_point(field_set_allocated:sessiond.sessionResponse.username)
}

// string session_id = 2;
inline void sessionResponse::clear_session_id() {
  session_id_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline const ::std::string& sessionResponse::session_id() const {
  // @@protoc_insertion_point(field_get:sessiond.sessionResponse.session_id)
  return session_id_.GetNoArena();
}
inline void sessionResponse::set_session_id(const ::std::string& value) {
  
  session_id_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:sessiond.sessionResponse.session_id)
}
#if LANG_CXX11
inline void sessionResponse::set_session_id(::std::string&& value) {
  
  session_id_.SetNoArena(
    &::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::move(value));
  // @@protoc_insertion_point(field_set_rvalue:sessiond.sessionResponse.session_id)
}
#endif
inline void sessionResponse::set_session_id(const char* value) {
  GOOGLE_DCHECK(value != NULL);
  
  session_id_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:sessiond.sessionResponse.session_id)
}
inline void sessionResponse::set_session_id(const char* value, size_t size) {
  
  session_id_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:sessiond.sessionResponse.session_id)
}
inline ::std::string* sessionResponse::mutable_session_id() {
  
  // @@protoc_insertion_point(field_mutable:sessiond.sessionResponse.session_id)
  return session_id_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline ::std::string* sessionResponse::release_session_id() {
  // @@protoc_insertion_point(field_release:sessiond.sessionResponse.session_id)
  
  return session_id_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
inline void sessionResponse::set_allocated_session_id(::std::string* session_id) {
  if (session_id != NULL) {
    
  } else {
    
  }
  session_id_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), session_id);
  // @@protoc_insertion_point(field_set_allocated:sessiond.sessionResponse.session_id)
}

#ifdef __GNUC__
  #pragma GCC diagnostic pop
#endif  // __GNUC__
#endif  // !PROTOBUF_INLINE_NOT_IN_HEADERS
// -------------------------------------------------------------------


// @@protoc_insertion_point(namespace_scope)


}  // namespace sessiond

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_sessiond_2eproto__INCLUDED