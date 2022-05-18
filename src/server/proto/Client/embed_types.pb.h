// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: embed_types.proto

#ifndef PROTOBUF_embed_5ftypes_2eproto__INCLUDED
#define PROTOBUF_embed_5ftypes_2eproto__INCLUDED

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 2006000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 2006001 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/unknown_field_set.h>
#include "Define.h" // for TC_PROTO_API
// @@protoc_insertion_point(includes)

namespace bgs {
namespace protocol {

// Internal implementation detail -- do not call these.
void TC_PROTO_API protobuf_AddDesc_embed_5ftypes_2eproto();
void protobuf_AssignDesc_embed_5ftypes_2eproto();
void protobuf_ShutdownFile_embed_5ftypes_2eproto();

class EmbedImage;
class Provider;
class EmbedInfo;

// ===================================================================

class TC_PROTO_API EmbedImage : public ::google::protobuf::Message {
 public:
  EmbedImage();
  virtual ~EmbedImage();

  EmbedImage(const EmbedImage& from);

  inline EmbedImage& operator=(const EmbedImage& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _unknown_fields_;
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return &_unknown_fields_;
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const EmbedImage& default_instance();

  void Swap(EmbedImage* other);

  // implements Message ----------------------------------------------

  EmbedImage* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const EmbedImage& from);
  void MergeFrom(const EmbedImage& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const;
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  public:
  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // optional string url = 1;
  inline bool has_url() const;
  inline void clear_url();
  static const int kUrlFieldNumber = 1;
  inline const ::std::string& url() const;
  inline void set_url(const ::std::string& value);
  inline void set_url(const char* value);
  inline void set_url(const char* value, size_t size);
  inline ::std::string* mutable_url();
  inline ::std::string* release_url();
  inline void set_allocated_url(::std::string* url);

  // optional uint32 width = 2;
  inline bool has_width() const;
  inline void clear_width();
  static const int kWidthFieldNumber = 2;
  inline ::google::protobuf::uint32 width() const;
  inline void set_width(::google::protobuf::uint32 value);

  // optional uint32 height = 3;
  inline bool has_height() const;
  inline void clear_height();
  static const int kHeightFieldNumber = 3;
  inline ::google::protobuf::uint32 height() const;
  inline void set_height(::google::protobuf::uint32 value);

  // @@protoc_insertion_point(class_scope:bgs.protocol.EmbedImage)
 private:
  inline void set_has_url();
  inline void clear_has_url();
  inline void set_has_width();
  inline void clear_has_width();
  inline void set_has_height();
  inline void clear_has_height();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::std::string* url_;
  ::google::protobuf::uint32 width_;
  ::google::protobuf::uint32 height_;
  friend void TC_PROTO_API protobuf_AddDesc_embed_5ftypes_2eproto();
  friend void protobuf_AssignDesc_embed_5ftypes_2eproto();
  friend void protobuf_ShutdownFile_embed_5ftypes_2eproto();

  void InitAsDefaultInstance();
  static EmbedImage* default_instance_;
};
// -------------------------------------------------------------------

class TC_PROTO_API Provider : public ::google::protobuf::Message {
 public:
  Provider();
  virtual ~Provider();

  Provider(const Provider& from);

  inline Provider& operator=(const Provider& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _unknown_fields_;
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return &_unknown_fields_;
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const Provider& default_instance();

  void Swap(Provider* other);

  // implements Message ----------------------------------------------

  Provider* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const Provider& from);
  void MergeFrom(const Provider& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const;
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  public:
  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // optional string name = 1;
  inline bool has_name() const;
  inline void clear_name();
  static const int kNameFieldNumber = 1;
  inline const ::std::string& name() const;
  inline void set_name(const ::std::string& value);
  inline void set_name(const char* value);
  inline void set_name(const char* value, size_t size);
  inline ::std::string* mutable_name();
  inline ::std::string* release_name();
  inline void set_allocated_name(::std::string* name);

  // @@protoc_insertion_point(class_scope:bgs.protocol.Provider)
 private:
  inline void set_has_name();
  inline void clear_has_name();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::std::string* name_;
  friend void TC_PROTO_API protobuf_AddDesc_embed_5ftypes_2eproto();
  friend void protobuf_AssignDesc_embed_5ftypes_2eproto();
  friend void protobuf_ShutdownFile_embed_5ftypes_2eproto();

  void InitAsDefaultInstance();
  static Provider* default_instance_;
};
// -------------------------------------------------------------------

class TC_PROTO_API EmbedInfo : public ::google::protobuf::Message {
 public:
  EmbedInfo();
  virtual ~EmbedInfo();

  EmbedInfo(const EmbedInfo& from);

  inline EmbedInfo& operator=(const EmbedInfo& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _unknown_fields_;
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return &_unknown_fields_;
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const EmbedInfo& default_instance();

  void Swap(EmbedInfo* other);

  // implements Message ----------------------------------------------

  EmbedInfo* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const EmbedInfo& from);
  void MergeFrom(const EmbedInfo& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const;
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  public:
  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // optional string title = 1;
  inline bool has_title() const;
  inline void clear_title();
  static const int kTitleFieldNumber = 1;
  inline const ::std::string& title() const;
  inline void set_title(const ::std::string& value);
  inline void set_title(const char* value);
  inline void set_title(const char* value, size_t size);
  inline ::std::string* mutable_title();
  inline ::std::string* release_title();
  inline void set_allocated_title(::std::string* title);

  // optional string type = 2;
  inline bool has_type() const;
  inline void clear_type();
  static const int kTypeFieldNumber = 2;
  inline const ::std::string& type() const;
  inline void set_type(const ::std::string& value);
  inline void set_type(const char* value);
  inline void set_type(const char* value, size_t size);
  inline ::std::string* mutable_type();
  inline ::std::string* release_type();
  inline void set_allocated_type(::std::string* type);

  // optional string original_url = 3;
  inline bool has_original_url() const;
  inline void clear_original_url();
  static const int kOriginalUrlFieldNumber = 3;
  inline const ::std::string& original_url() const;
  inline void set_original_url(const ::std::string& value);
  inline void set_original_url(const char* value);
  inline void set_original_url(const char* value, size_t size);
  inline ::std::string* mutable_original_url();
  inline ::std::string* release_original_url();
  inline void set_allocated_original_url(::std::string* original_url);

  // optional .bgs.protocol.EmbedImage thumbnail = 4;
  inline bool has_thumbnail() const;
  inline void clear_thumbnail();
  static const int kThumbnailFieldNumber = 4;
  inline const ::bgs::protocol::EmbedImage& thumbnail() const;
  inline ::bgs::protocol::EmbedImage* mutable_thumbnail();
  inline ::bgs::protocol::EmbedImage* release_thumbnail();
  inline void set_allocated_thumbnail(::bgs::protocol::EmbedImage* thumbnail);

  // optional .bgs.protocol.Provider provider = 5;
  inline bool has_provider() const;
  inline void clear_provider();
  static const int kProviderFieldNumber = 5;
  inline const ::bgs::protocol::Provider& provider() const;
  inline ::bgs::protocol::Provider* mutable_provider();
  inline ::bgs::protocol::Provider* release_provider();
  inline void set_allocated_provider(::bgs::protocol::Provider* provider);

  // optional string description = 6;
  inline bool has_description() const;
  inline void clear_description();
  static const int kDescriptionFieldNumber = 6;
  inline const ::std::string& description() const;
  inline void set_description(const ::std::string& value);
  inline void set_description(const char* value);
  inline void set_description(const char* value, size_t size);
  inline ::std::string* mutable_description();
  inline ::std::string* release_description();
  inline void set_allocated_description(::std::string* description);

  // @@protoc_insertion_point(class_scope:bgs.protocol.EmbedInfo)
 private:
  inline void set_has_title();
  inline void clear_has_title();
  inline void set_has_type();
  inline void clear_has_type();
  inline void set_has_original_url();
  inline void clear_has_original_url();
  inline void set_has_thumbnail();
  inline void clear_has_thumbnail();
  inline void set_has_provider();
  inline void clear_has_provider();
  inline void set_has_description();
  inline void clear_has_description();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::std::string* title_;
  ::std::string* type_;
  ::std::string* original_url_;
  ::bgs::protocol::EmbedImage* thumbnail_;
  ::bgs::protocol::Provider* provider_;
  ::std::string* description_;
  friend void TC_PROTO_API protobuf_AddDesc_embed_5ftypes_2eproto();
  friend void protobuf_AssignDesc_embed_5ftypes_2eproto();
  friend void protobuf_ShutdownFile_embed_5ftypes_2eproto();

  void InitAsDefaultInstance();
  static EmbedInfo* default_instance_;
};
// ===================================================================


// ===================================================================


// ===================================================================

// EmbedImage

// optional string url = 1;
inline bool EmbedImage::has_url() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void EmbedImage::set_has_url() {
  _has_bits_[0] |= 0x00000001u;
}
inline void EmbedImage::clear_has_url() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void EmbedImage::clear_url() {
  if (url_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    url_->clear();
  }
  clear_has_url();
}
inline const ::std::string& EmbedImage::url() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.EmbedImage.url)
  return *url_;
}
inline void EmbedImage::set_url(const ::std::string& value) {
  set_has_url();
  if (url_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    url_ = new ::std::string;
  }
  url_->assign(value);
  // @@protoc_insertion_point(field_set:bgs.protocol.EmbedImage.url)
}
inline void EmbedImage::set_url(const char* value) {
  set_has_url();
  if (url_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    url_ = new ::std::string;
  }
  url_->assign(value);
  // @@protoc_insertion_point(field_set_char:bgs.protocol.EmbedImage.url)
}
inline void EmbedImage::set_url(const char* value, size_t size) {
  set_has_url();
  if (url_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    url_ = new ::std::string;
  }
  url_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:bgs.protocol.EmbedImage.url)
}
inline ::std::string* EmbedImage::mutable_url() {
  set_has_url();
  if (url_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    url_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:bgs.protocol.EmbedImage.url)
  return url_;
}
inline ::std::string* EmbedImage::release_url() {
  clear_has_url();
  if (url_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = url_;
    url_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void EmbedImage::set_allocated_url(::std::string* url) {
  if (url_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete url_;
  }
  if (url) {
    set_has_url();
    url_ = url;
  } else {
    clear_has_url();
    url_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:bgs.protocol.EmbedImage.url)
}

// optional uint32 width = 2;
inline bool EmbedImage::has_width() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void EmbedImage::set_has_width() {
  _has_bits_[0] |= 0x00000002u;
}
inline void EmbedImage::clear_has_width() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void EmbedImage::clear_width() {
  width_ = 0u;
  clear_has_width();
}
inline ::google::protobuf::uint32 EmbedImage::width() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.EmbedImage.width)
  return width_;
}
inline void EmbedImage::set_width(::google::protobuf::uint32 value) {
  set_has_width();
  width_ = value;
  // @@protoc_insertion_point(field_set:bgs.protocol.EmbedImage.width)
}

// optional uint32 height = 3;
inline bool EmbedImage::has_height() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void EmbedImage::set_has_height() {
  _has_bits_[0] |= 0x00000004u;
}
inline void EmbedImage::clear_has_height() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void EmbedImage::clear_height() {
  height_ = 0u;
  clear_has_height();
}
inline ::google::protobuf::uint32 EmbedImage::height() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.EmbedImage.height)
  return height_;
}
inline void EmbedImage::set_height(::google::protobuf::uint32 value) {
  set_has_height();
  height_ = value;
  // @@protoc_insertion_point(field_set:bgs.protocol.EmbedImage.height)
}

// -------------------------------------------------------------------

// Provider

// optional string name = 1;
inline bool Provider::has_name() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void Provider::set_has_name() {
  _has_bits_[0] |= 0x00000001u;
}
inline void Provider::clear_has_name() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void Provider::clear_name() {
  if (name_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_->clear();
  }
  clear_has_name();
}
inline const ::std::string& Provider::name() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.Provider.name)
  return *name_;
}
inline void Provider::set_name(const ::std::string& value) {
  set_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_ = new ::std::string;
  }
  name_->assign(value);
  // @@protoc_insertion_point(field_set:bgs.protocol.Provider.name)
}
inline void Provider::set_name(const char* value) {
  set_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_ = new ::std::string;
  }
  name_->assign(value);
  // @@protoc_insertion_point(field_set_char:bgs.protocol.Provider.name)
}
inline void Provider::set_name(const char* value, size_t size) {
  set_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_ = new ::std::string;
  }
  name_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:bgs.protocol.Provider.name)
}
inline ::std::string* Provider::mutable_name() {
  set_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    name_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:bgs.protocol.Provider.name)
  return name_;
}
inline ::std::string* Provider::release_name() {
  clear_has_name();
  if (name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = name_;
    name_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void Provider::set_allocated_name(::std::string* name) {
  if (name_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete name_;
  }
  if (name) {
    set_has_name();
    name_ = name;
  } else {
    clear_has_name();
    name_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:bgs.protocol.Provider.name)
}

// -------------------------------------------------------------------

// EmbedInfo

// optional string title = 1;
inline bool EmbedInfo::has_title() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void EmbedInfo::set_has_title() {
  _has_bits_[0] |= 0x00000001u;
}
inline void EmbedInfo::clear_has_title() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void EmbedInfo::clear_title() {
  if (title_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    title_->clear();
  }
  clear_has_title();
}
inline const ::std::string& EmbedInfo::title() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.EmbedInfo.title)
  return *title_;
}
inline void EmbedInfo::set_title(const ::std::string& value) {
  set_has_title();
  if (title_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    title_ = new ::std::string;
  }
  title_->assign(value);
  // @@protoc_insertion_point(field_set:bgs.protocol.EmbedInfo.title)
}
inline void EmbedInfo::set_title(const char* value) {
  set_has_title();
  if (title_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    title_ = new ::std::string;
  }
  title_->assign(value);
  // @@protoc_insertion_point(field_set_char:bgs.protocol.EmbedInfo.title)
}
inline void EmbedInfo::set_title(const char* value, size_t size) {
  set_has_title();
  if (title_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    title_ = new ::std::string;
  }
  title_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:bgs.protocol.EmbedInfo.title)
}
inline ::std::string* EmbedInfo::mutable_title() {
  set_has_title();
  if (title_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    title_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:bgs.protocol.EmbedInfo.title)
  return title_;
}
inline ::std::string* EmbedInfo::release_title() {
  clear_has_title();
  if (title_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = title_;
    title_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void EmbedInfo::set_allocated_title(::std::string* title) {
  if (title_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete title_;
  }
  if (title) {
    set_has_title();
    title_ = title;
  } else {
    clear_has_title();
    title_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:bgs.protocol.EmbedInfo.title)
}

// optional string type = 2;
inline bool EmbedInfo::has_type() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void EmbedInfo::set_has_type() {
  _has_bits_[0] |= 0x00000002u;
}
inline void EmbedInfo::clear_has_type() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void EmbedInfo::clear_type() {
  if (type_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    type_->clear();
  }
  clear_has_type();
}
inline const ::std::string& EmbedInfo::type() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.EmbedInfo.type)
  return *type_;
}
inline void EmbedInfo::set_type(const ::std::string& value) {
  set_has_type();
  if (type_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    type_ = new ::std::string;
  }
  type_->assign(value);
  // @@protoc_insertion_point(field_set:bgs.protocol.EmbedInfo.type)
}
inline void EmbedInfo::set_type(const char* value) {
  set_has_type();
  if (type_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    type_ = new ::std::string;
  }
  type_->assign(value);
  // @@protoc_insertion_point(field_set_char:bgs.protocol.EmbedInfo.type)
}
inline void EmbedInfo::set_type(const char* value, size_t size) {
  set_has_type();
  if (type_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    type_ = new ::std::string;
  }
  type_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:bgs.protocol.EmbedInfo.type)
}
inline ::std::string* EmbedInfo::mutable_type() {
  set_has_type();
  if (type_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    type_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:bgs.protocol.EmbedInfo.type)
  return type_;
}
inline ::std::string* EmbedInfo::release_type() {
  clear_has_type();
  if (type_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = type_;
    type_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void EmbedInfo::set_allocated_type(::std::string* type) {
  if (type_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete type_;
  }
  if (type) {
    set_has_type();
    type_ = type;
  } else {
    clear_has_type();
    type_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:bgs.protocol.EmbedInfo.type)
}

// optional string original_url = 3;
inline bool EmbedInfo::has_original_url() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void EmbedInfo::set_has_original_url() {
  _has_bits_[0] |= 0x00000004u;
}
inline void EmbedInfo::clear_has_original_url() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void EmbedInfo::clear_original_url() {
  if (original_url_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    original_url_->clear();
  }
  clear_has_original_url();
}
inline const ::std::string& EmbedInfo::original_url() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.EmbedInfo.original_url)
  return *original_url_;
}
inline void EmbedInfo::set_original_url(const ::std::string& value) {
  set_has_original_url();
  if (original_url_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    original_url_ = new ::std::string;
  }
  original_url_->assign(value);
  // @@protoc_insertion_point(field_set:bgs.protocol.EmbedInfo.original_url)
}
inline void EmbedInfo::set_original_url(const char* value) {
  set_has_original_url();
  if (original_url_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    original_url_ = new ::std::string;
  }
  original_url_->assign(value);
  // @@protoc_insertion_point(field_set_char:bgs.protocol.EmbedInfo.original_url)
}
inline void EmbedInfo::set_original_url(const char* value, size_t size) {
  set_has_original_url();
  if (original_url_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    original_url_ = new ::std::string;
  }
  original_url_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:bgs.protocol.EmbedInfo.original_url)
}
inline ::std::string* EmbedInfo::mutable_original_url() {
  set_has_original_url();
  if (original_url_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    original_url_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:bgs.protocol.EmbedInfo.original_url)
  return original_url_;
}
inline ::std::string* EmbedInfo::release_original_url() {
  clear_has_original_url();
  if (original_url_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = original_url_;
    original_url_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void EmbedInfo::set_allocated_original_url(::std::string* original_url) {
  if (original_url_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete original_url_;
  }
  if (original_url) {
    set_has_original_url();
    original_url_ = original_url;
  } else {
    clear_has_original_url();
    original_url_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:bgs.protocol.EmbedInfo.original_url)
}

// optional .bgs.protocol.EmbedImage thumbnail = 4;
inline bool EmbedInfo::has_thumbnail() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void EmbedInfo::set_has_thumbnail() {
  _has_bits_[0] |= 0x00000008u;
}
inline void EmbedInfo::clear_has_thumbnail() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void EmbedInfo::clear_thumbnail() {
  if (thumbnail_ != NULL) thumbnail_->::bgs::protocol::EmbedImage::Clear();
  clear_has_thumbnail();
}
inline const ::bgs::protocol::EmbedImage& EmbedInfo::thumbnail() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.EmbedInfo.thumbnail)
  return thumbnail_ != NULL ? *thumbnail_ : *default_instance_->thumbnail_;
}
inline ::bgs::protocol::EmbedImage* EmbedInfo::mutable_thumbnail() {
  set_has_thumbnail();
  if (thumbnail_ == NULL) thumbnail_ = new ::bgs::protocol::EmbedImage;
  // @@protoc_insertion_point(field_mutable:bgs.protocol.EmbedInfo.thumbnail)
  return thumbnail_;
}
inline ::bgs::protocol::EmbedImage* EmbedInfo::release_thumbnail() {
  clear_has_thumbnail();
  ::bgs::protocol::EmbedImage* temp = thumbnail_;
  thumbnail_ = NULL;
  return temp;
}
inline void EmbedInfo::set_allocated_thumbnail(::bgs::protocol::EmbedImage* thumbnail) {
  delete thumbnail_;
  thumbnail_ = thumbnail;
  if (thumbnail) {
    set_has_thumbnail();
  } else {
    clear_has_thumbnail();
  }
  // @@protoc_insertion_point(field_set_allocated:bgs.protocol.EmbedInfo.thumbnail)
}

// optional .bgs.protocol.Provider provider = 5;
inline bool EmbedInfo::has_provider() const {
  return (_has_bits_[0] & 0x00000010u) != 0;
}
inline void EmbedInfo::set_has_provider() {
  _has_bits_[0] |= 0x00000010u;
}
inline void EmbedInfo::clear_has_provider() {
  _has_bits_[0] &= ~0x00000010u;
}
inline void EmbedInfo::clear_provider() {
  if (provider_ != NULL) provider_->::bgs::protocol::Provider::Clear();
  clear_has_provider();
}
inline const ::bgs::protocol::Provider& EmbedInfo::provider() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.EmbedInfo.provider)
  return provider_ != NULL ? *provider_ : *default_instance_->provider_;
}
inline ::bgs::protocol::Provider* EmbedInfo::mutable_provider() {
  set_has_provider();
  if (provider_ == NULL) provider_ = new ::bgs::protocol::Provider;
  // @@protoc_insertion_point(field_mutable:bgs.protocol.EmbedInfo.provider)
  return provider_;
}
inline ::bgs::protocol::Provider* EmbedInfo::release_provider() {
  clear_has_provider();
  ::bgs::protocol::Provider* temp = provider_;
  provider_ = NULL;
  return temp;
}
inline void EmbedInfo::set_allocated_provider(::bgs::protocol::Provider* provider) {
  delete provider_;
  provider_ = provider;
  if (provider) {
    set_has_provider();
  } else {
    clear_has_provider();
  }
  // @@protoc_insertion_point(field_set_allocated:bgs.protocol.EmbedInfo.provider)
}

// optional string description = 6;
inline bool EmbedInfo::has_description() const {
  return (_has_bits_[0] & 0x00000020u) != 0;
}
inline void EmbedInfo::set_has_description() {
  _has_bits_[0] |= 0x00000020u;
}
inline void EmbedInfo::clear_has_description() {
  _has_bits_[0] &= ~0x00000020u;
}
inline void EmbedInfo::clear_description() {
  if (description_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    description_->clear();
  }
  clear_has_description();
}
inline const ::std::string& EmbedInfo::description() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.EmbedInfo.description)
  return *description_;
}
inline void EmbedInfo::set_description(const ::std::string& value) {
  set_has_description();
  if (description_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    description_ = new ::std::string;
  }
  description_->assign(value);
  // @@protoc_insertion_point(field_set:bgs.protocol.EmbedInfo.description)
}
inline void EmbedInfo::set_description(const char* value) {
  set_has_description();
  if (description_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    description_ = new ::std::string;
  }
  description_->assign(value);
  // @@protoc_insertion_point(field_set_char:bgs.protocol.EmbedInfo.description)
}
inline void EmbedInfo::set_description(const char* value, size_t size) {
  set_has_description();
  if (description_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    description_ = new ::std::string;
  }
  description_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:bgs.protocol.EmbedInfo.description)
}
inline ::std::string* EmbedInfo::mutable_description() {
  set_has_description();
  if (description_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    description_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:bgs.protocol.EmbedInfo.description)
  return description_;
}
inline ::std::string* EmbedInfo::release_description() {
  clear_has_description();
  if (description_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = description_;
    description_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void EmbedInfo::set_allocated_description(::std::string* description) {
  if (description_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete description_;
  }
  if (description) {
    set_has_description();
    description_ = description;
  } else {
    clear_has_description();
    description_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:bgs.protocol.EmbedInfo.description)
}


// @@protoc_insertion_point(namespace_scope)

}  // namespace protocol
}  // namespace bgs

#ifndef SWIG
namespace google {
namespace protobuf {


}  // namespace google
}  // namespace protobuf
#endif  // SWIG

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_embed_5ftypes_2eproto__INCLUDED
