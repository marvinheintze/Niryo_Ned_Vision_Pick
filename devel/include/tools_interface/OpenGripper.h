// Generated by gencpp from file tools_interface/OpenGripper.msg
// DO NOT EDIT!


#ifndef TOOLS_INTERFACE_MESSAGE_OPENGRIPPER_H
#define TOOLS_INTERFACE_MESSAGE_OPENGRIPPER_H

#include <ros/service_traits.h>


#include <tools_interface/OpenGripperRequest.h>
#include <tools_interface/OpenGripperResponse.h>


namespace tools_interface
{

struct OpenGripper
{

typedef OpenGripperRequest Request;
typedef OpenGripperResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct OpenGripper
} // namespace tools_interface


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tools_interface::OpenGripper > {
  static const char* value()
  {
    return "8fa16a49b77c971df71ae1d221893f06";
  }

  static const char* value(const ::tools_interface::OpenGripper&) { return value(); }
};

template<>
struct DataType< ::tools_interface::OpenGripper > {
  static const char* value()
  {
    return "tools_interface/OpenGripper";
  }

  static const char* value(const ::tools_interface::OpenGripper&) { return value(); }
};


// service_traits::MD5Sum< ::tools_interface::OpenGripperRequest> should match
// service_traits::MD5Sum< ::tools_interface::OpenGripper >
template<>
struct MD5Sum< ::tools_interface::OpenGripperRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tools_interface::OpenGripper >::value();
  }
  static const char* value(const ::tools_interface::OpenGripperRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tools_interface::OpenGripperRequest> should match
// service_traits::DataType< ::tools_interface::OpenGripper >
template<>
struct DataType< ::tools_interface::OpenGripperRequest>
{
  static const char* value()
  {
    return DataType< ::tools_interface::OpenGripper >::value();
  }
  static const char* value(const ::tools_interface::OpenGripperRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tools_interface::OpenGripperResponse> should match
// service_traits::MD5Sum< ::tools_interface::OpenGripper >
template<>
struct MD5Sum< ::tools_interface::OpenGripperResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tools_interface::OpenGripper >::value();
  }
  static const char* value(const ::tools_interface::OpenGripperResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tools_interface::OpenGripperResponse> should match
// service_traits::DataType< ::tools_interface::OpenGripper >
template<>
struct DataType< ::tools_interface::OpenGripperResponse>
{
  static const char* value()
  {
    return DataType< ::tools_interface::OpenGripper >::value();
  }
  static const char* value(const ::tools_interface::OpenGripperResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TOOLS_INTERFACE_MESSAGE_OPENGRIPPER_H
