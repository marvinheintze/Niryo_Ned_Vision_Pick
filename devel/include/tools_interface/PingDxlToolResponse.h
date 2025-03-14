// Generated by gencpp from file tools_interface/PingDxlToolResponse.msg
// DO NOT EDIT!


#ifndef TOOLS_INTERFACE_MESSAGE_PINGDXLTOOLRESPONSE_H
#define TOOLS_INTERFACE_MESSAGE_PINGDXLTOOLRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tools_interface
{
template <class ContainerAllocator>
struct PingDxlToolResponse_
{
  typedef PingDxlToolResponse_<ContainerAllocator> Type;

  PingDxlToolResponse_()
    : state(0)
    , id(0)  {
    }
  PingDxlToolResponse_(const ContainerAllocator& _alloc)
    : state(0)
    , id(0)  {
  (void)_alloc;
    }



   typedef int32_t _state_type;
  _state_type state;

   typedef uint8_t _id_type;
  _id_type id;





  typedef boost::shared_ptr< ::tools_interface::PingDxlToolResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tools_interface::PingDxlToolResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PingDxlToolResponse_

typedef ::tools_interface::PingDxlToolResponse_<std::allocator<void> > PingDxlToolResponse;

typedef boost::shared_ptr< ::tools_interface::PingDxlToolResponse > PingDxlToolResponsePtr;
typedef boost::shared_ptr< ::tools_interface::PingDxlToolResponse const> PingDxlToolResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tools_interface::PingDxlToolResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tools_interface::PingDxlToolResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tools_interface::PingDxlToolResponse_<ContainerAllocator1> & lhs, const ::tools_interface::PingDxlToolResponse_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state &&
    lhs.id == rhs.id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tools_interface::PingDxlToolResponse_<ContainerAllocator1> & lhs, const ::tools_interface::PingDxlToolResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tools_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::tools_interface::PingDxlToolResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tools_interface::PingDxlToolResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tools_interface::PingDxlToolResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tools_interface::PingDxlToolResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tools_interface::PingDxlToolResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tools_interface::PingDxlToolResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tools_interface::PingDxlToolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8744796096faed60cc6cc1a7e157e137";
  }

  static const char* value(const ::tools_interface::PingDxlToolResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8744796096faed60ULL;
  static const uint64_t static_value2 = 0xcc6cc1a7e157e137ULL;
};

template<class ContainerAllocator>
struct DataType< ::tools_interface::PingDxlToolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tools_interface/PingDxlToolResponse";
  }

  static const char* value(const ::tools_interface::PingDxlToolResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tools_interface::PingDxlToolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 state\n"
"uint8 id\n"
"\n"
;
  }

  static const char* value(const ::tools_interface::PingDxlToolResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tools_interface::PingDxlToolResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
      stream.next(m.id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PingDxlToolResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tools_interface::PingDxlToolResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tools_interface::PingDxlToolResponse_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<int32_t>::stream(s, indent + "  ", v.state);
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TOOLS_INTERFACE_MESSAGE_PINGDXLTOOLRESPONSE_H
