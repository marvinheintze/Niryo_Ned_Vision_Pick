// Generated by gencpp from file niryo_robot_tools_commander/ToolGoal.msg
// DO NOT EDIT!


#ifndef NIRYO_ROBOT_TOOLS_COMMANDER_MESSAGE_TOOLGOAL_H
#define NIRYO_ROBOT_TOOLS_COMMANDER_MESSAGE_TOOLGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <niryo_robot_tools_commander/ToolCommand.h>

namespace niryo_robot_tools_commander
{
template <class ContainerAllocator>
struct ToolGoal_
{
  typedef ToolGoal_<ContainerAllocator> Type;

  ToolGoal_()
    : cmd()  {
    }
  ToolGoal_(const ContainerAllocator& _alloc)
    : cmd(_alloc)  {
  (void)_alloc;
    }



   typedef  ::niryo_robot_tools_commander::ToolCommand_<ContainerAllocator>  _cmd_type;
  _cmd_type cmd;





  typedef boost::shared_ptr< ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> const> ConstPtr;

}; // struct ToolGoal_

typedef ::niryo_robot_tools_commander::ToolGoal_<std::allocator<void> > ToolGoal;

typedef boost::shared_ptr< ::niryo_robot_tools_commander::ToolGoal > ToolGoalPtr;
typedef boost::shared_ptr< ::niryo_robot_tools_commander::ToolGoal const> ToolGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator1> & lhs, const ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator2> & rhs)
{
  return lhs.cmd == rhs.cmd;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator1> & lhs, const ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace niryo_robot_tools_commander

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6a82b00a12ace7515f408f53824d53d8";
  }

  static const char* value(const ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6a82b00a12ace751ULL;
  static const uint64_t static_value2 = 0x5f408f53824d53d8ULL;
};

template<class ContainerAllocator>
struct DataType< ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "niryo_robot_tools_commander/ToolGoal";
  }

  static const char* value(const ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# goal\n"
"niryo_robot_tools_commander/ToolCommand cmd\n"
"\n"
"================================================================================\n"
"MSG: niryo_robot_tools_commander/ToolCommand\n"
"# Gripper\n"
"uint8 OPEN_GRIPPER = 1\n"
"uint8 CLOSE_GRIPPER = 2\n"
"\n"
"# Vacuump pump\n"
"uint8 PULL_AIR_VACUUM_PUMP = 10\n"
"uint8 PUSH_AIR_VACUUM_PUMP = 11\n"
"\n"
"# Tools controlled by digital I/Os\n"
"uint8 SETUP_DIGITAL_IO = 20\n"
"uint8 ACTIVATE_DIGITAL_IO = 21\n"
"uint8 DEACTIVATE_DIGITAL_IO = 22\n"
"\n"
"uint8 cmd_type\n"
"\n"
"# Gripper1= 11, Gripper2=12, Gripper3=13, VaccuumPump=31, Electromagnet=30\n"
"uint8 tool_id\n"
"\n"
"# if gripper close\n"
"uint16 gripper_close_speed\n"
"\n"
"# if gripper open\n"
"uint16 gripper_open_speed\n"
"\n"
"# if vacuum pump or electromagnet grove\n"
"bool activate\n"
"\n"
"# if tool is set by digital outputs (electromagnet)\n"
"# if gpio<0 get value in memory\n"
"int8 gpio\n"
;
  }

  static const char* value(const ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ToolGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::niryo_robot_tools_commander::ToolGoal_<ContainerAllocator>& v)
  {
    s << indent << "cmd: ";
    s << std::endl;
    Printer< ::niryo_robot_tools_commander::ToolCommand_<ContainerAllocator> >::stream(s, indent + "  ", v.cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIRYO_ROBOT_TOOLS_COMMANDER_MESSAGE_TOOLGOAL_H
