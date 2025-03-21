// Generated by gencpp from file niryo_robot_poses_handlers/Workspace.msg
// DO NOT EDIT!


#ifndef NIRYO_ROBOT_POSES_HANDLERS_MESSAGE_WORKSPACE_H
#define NIRYO_ROBOT_POSES_HANDLERS_MESSAGE_WORKSPACE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <niryo_robot_msgs/RobotState.h>

namespace niryo_robot_poses_handlers
{
template <class ContainerAllocator>
struct Workspace_
{
  typedef Workspace_<ContainerAllocator> Type;

  Workspace_()
    : name()
    , description()
    , points()
    , poses()  {
    }
  Workspace_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , description(_alloc)
    , points(_alloc)
    , poses(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _description_type;
  _description_type description;

   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::Point_<ContainerAllocator> >> _points_type;
  _points_type points;

   typedef std::vector< ::niryo_robot_msgs::RobotState_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::niryo_robot_msgs::RobotState_<ContainerAllocator> >> _poses_type;
  _poses_type poses;





  typedef boost::shared_ptr< ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> const> ConstPtr;

}; // struct Workspace_

typedef ::niryo_robot_poses_handlers::Workspace_<std::allocator<void> > Workspace;

typedef boost::shared_ptr< ::niryo_robot_poses_handlers::Workspace > WorkspacePtr;
typedef boost::shared_ptr< ::niryo_robot_poses_handlers::Workspace const> WorkspaceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator1> & lhs, const ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.description == rhs.description &&
    lhs.points == rhs.points &&
    lhs.poses == rhs.poses;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator1> & lhs, const ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_robot_poses_handlers

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "78b18b2179ba70e3def874770a12e475";
  }

  static const char* value(const ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x78b18b2179ba70e3ULL;
  static const uint64_t static_value2 = 0xdef874770a12e475ULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_robot_poses_handlers/Workspace";
  }

  static const char* value(const ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name # maximum lenght of workspace's name is 30 characters\n"
"string description\n"
"\n"
"geometry_msgs/Point[] points\n"
"niryo_robot_msgs/RobotState[] poses\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: niryo_robot_msgs/RobotState\n"
"geometry_msgs/Point position\n"
"niryo_robot_msgs/RPY rpy\n"
"geometry_msgs/Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: niryo_robot_msgs/RPY\n"
"# roll, pitch and yaw\n"
"\n"
"float64 roll\n"
"float64 pitch\n"
"float64 yaw\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.description);
      stream.next(m.points);
      stream.next(m.poses);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Workspace_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_robot_poses_handlers::Workspace_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "description: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.description);
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
    s << indent << "poses[]" << std::endl;
    for (size_t i = 0; i < v.poses.size(); ++i)
    {
      s << indent << "  poses[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::niryo_robot_msgs::RobotState_<ContainerAllocator> >::stream(s, indent + "    ", v.poses[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ROBOT_POSES_HANDLERS_MESSAGE_WORKSPACE_H
