// Generated by gencpp from file tools_interface/PingDxlTool.msg
// DO NOT EDIT!


#ifndef TOOLS_INTERFACE_MESSAGE_PINGDXLTOOL_H
#define TOOLS_INTERFACE_MESSAGE_PINGDXLTOOL_H

#include <ros/service_traits.h>


#include <tools_interface/PingDxlToolRequest.h>
#include <tools_interface/PingDxlToolResponse.h>


namespace tools_interface
{

struct PingDxlTool
{

typedef PingDxlToolRequest Request;
typedef PingDxlToolResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PingDxlTool
} // namespace tools_interface


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tools_interface::PingDxlTool > {
  static const char* value()
  {
    return "8744796096faed60cc6cc1a7e157e137";
  }

  static const char* value(const ::tools_interface::PingDxlTool&) { return value(); }
};

template<>
struct DataType< ::tools_interface::PingDxlTool > {
  static const char* value()
  {
    return "tools_interface/PingDxlTool";
  }

  static const char* value(const ::tools_interface::PingDxlTool&) { return value(); }
};


// service_traits::MD5Sum< ::tools_interface::PingDxlToolRequest> should match
// service_traits::MD5Sum< ::tools_interface::PingDxlTool >
template<>
struct MD5Sum< ::tools_interface::PingDxlToolRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tools_interface::PingDxlTool >::value();
  }
  static const char* value(const ::tools_interface::PingDxlToolRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tools_interface::PingDxlToolRequest> should match
// service_traits::DataType< ::tools_interface::PingDxlTool >
template<>
struct DataType< ::tools_interface::PingDxlToolRequest>
{
  static const char* value()
  {
    return DataType< ::tools_interface::PingDxlTool >::value();
  }
  static const char* value(const ::tools_interface::PingDxlToolRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tools_interface::PingDxlToolResponse> should match
// service_traits::MD5Sum< ::tools_interface::PingDxlTool >
template<>
struct MD5Sum< ::tools_interface::PingDxlToolResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tools_interface::PingDxlTool >::value();
  }
  static const char* value(const ::tools_interface::PingDxlToolResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tools_interface::PingDxlToolResponse> should match
// service_traits::DataType< ::tools_interface::PingDxlTool >
template<>
struct DataType< ::tools_interface::PingDxlToolResponse>
{
  static const char* value()
  {
    return DataType< ::tools_interface::PingDxlTool >::value();
  }
  static const char* value(const ::tools_interface::PingDxlToolResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TOOLS_INTERFACE_MESSAGE_PINGDXLTOOL_H
