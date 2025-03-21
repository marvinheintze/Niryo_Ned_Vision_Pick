// Generated by gencpp from file niryo_robot_poses_handlers/GetTrajectory.msg
// DO NOT EDIT!


#ifndef NIRYO_ROBOT_POSES_HANDLERS_MESSAGE_GETTRAJECTORY_H
#define NIRYO_ROBOT_POSES_HANDLERS_MESSAGE_GETTRAJECTORY_H

#include <ros/service_traits.h>


#include <niryo_robot_poses_handlers/GetTrajectoryRequest.h>
#include <niryo_robot_poses_handlers/GetTrajectoryResponse.h>


namespace niryo_robot_poses_handlers
{

struct GetTrajectory
{

typedef GetTrajectoryRequest Request;
typedef GetTrajectoryResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetTrajectory
} // namespace niryo_robot_poses_handlers


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::niryo_robot_poses_handlers::GetTrajectory > {
  static const char* value()
  {
    return "e074d515a67a586d5cdf2f0af35104eb";
  }

  static const char* value(const ::niryo_robot_poses_handlers::GetTrajectory&) { return value(); }
};

template<>
struct DataType< ::niryo_robot_poses_handlers::GetTrajectory > {
  static const char* value()
  {
    return "niryo_robot_poses_handlers/GetTrajectory";
  }

  static const char* value(const ::niryo_robot_poses_handlers::GetTrajectory&) { return value(); }
};


// service_traits::MD5Sum< ::niryo_robot_poses_handlers::GetTrajectoryRequest> should match
// service_traits::MD5Sum< ::niryo_robot_poses_handlers::GetTrajectory >
template<>
struct MD5Sum< ::niryo_robot_poses_handlers::GetTrajectoryRequest>
{
  static const char* value()
  {
    return MD5Sum< ::niryo_robot_poses_handlers::GetTrajectory >::value();
  }
  static const char* value(const ::niryo_robot_poses_handlers::GetTrajectoryRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::niryo_robot_poses_handlers::GetTrajectoryRequest> should match
// service_traits::DataType< ::niryo_robot_poses_handlers::GetTrajectory >
template<>
struct DataType< ::niryo_robot_poses_handlers::GetTrajectoryRequest>
{
  static const char* value()
  {
    return DataType< ::niryo_robot_poses_handlers::GetTrajectory >::value();
  }
  static const char* value(const ::niryo_robot_poses_handlers::GetTrajectoryRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::niryo_robot_poses_handlers::GetTrajectoryResponse> should match
// service_traits::MD5Sum< ::niryo_robot_poses_handlers::GetTrajectory >
template<>
struct MD5Sum< ::niryo_robot_poses_handlers::GetTrajectoryResponse>
{
  static const char* value()
  {
    return MD5Sum< ::niryo_robot_poses_handlers::GetTrajectory >::value();
  }
  static const char* value(const ::niryo_robot_poses_handlers::GetTrajectoryResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::niryo_robot_poses_handlers::GetTrajectoryResponse> should match
// service_traits::DataType< ::niryo_robot_poses_handlers::GetTrajectory >
template<>
struct DataType< ::niryo_robot_poses_handlers::GetTrajectoryResponse>
{
  static const char* value()
  {
    return DataType< ::niryo_robot_poses_handlers::GetTrajectory >::value();
  }
  static const char* value(const ::niryo_robot_poses_handlers::GetTrajectoryResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NIRYO_ROBOT_POSES_HANDLERS_MESSAGE_GETTRAJECTORY_H
