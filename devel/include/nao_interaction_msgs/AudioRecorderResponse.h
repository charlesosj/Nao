// Generated by gencpp from file nao_interaction_msgs/AudioRecorderResponse.msg
// DO NOT EDIT!


#ifndef NAO_INTERACTION_MSGS_MESSAGE_AUDIORECORDERRESPONSE_H
#define NAO_INTERACTION_MSGS_MESSAGE_AUDIORECORDERRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace nao_interaction_msgs
{
template <class ContainerAllocator>
struct AudioRecorderResponse_
{
  typedef AudioRecorderResponse_<ContainerAllocator> Type;

  AudioRecorderResponse_()
    {
    }
  AudioRecorderResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> const> ConstPtr;

}; // struct AudioRecorderResponse_

typedef ::nao_interaction_msgs::AudioRecorderResponse_<std::allocator<void> > AudioRecorderResponse;

typedef boost::shared_ptr< ::nao_interaction_msgs::AudioRecorderResponse > AudioRecorderResponsePtr;
typedef boost::shared_ptr< ::nao_interaction_msgs::AudioRecorderResponse const> AudioRecorderResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace nao_interaction_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/indigo/share/trajectory_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'nao_interaction_msgs': ['/home/charles/catkin_ws/src/naoqi_interaction/nao_interaction_msgs/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nao_interaction_msgs/AudioRecorderResponse";
  }

  static const char* value(const ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
";
  }

  static const char* value(const ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AudioRecorderResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::nao_interaction_msgs::AudioRecorderResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // NAO_INTERACTION_MSGS_MESSAGE_AUDIORECORDERRESPONSE_H
