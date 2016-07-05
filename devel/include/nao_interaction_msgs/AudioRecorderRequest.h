// Generated by gencpp from file nao_interaction_msgs/AudioRecorderRequest.msg
// DO NOT EDIT!


#ifndef NAO_INTERACTION_MSGS_MESSAGE_AUDIORECORDERREQUEST_H
#define NAO_INTERACTION_MSGS_MESSAGE_AUDIORECORDERREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/String.h>
#include <std_msgs/Int32.h>
#include <std_msgs/Char.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Int32.h>

namespace nao_interaction_msgs
{
template <class ContainerAllocator>
struct AudioRecorderRequest_
{
  typedef AudioRecorderRequest_<ContainerAllocator> Type;

  AudioRecorderRequest_()
    : file_path()
    , secs()
    , audio_type()
    , left_channel()
    , right_channel()
    , front_channel()
    , rear_channel()
    , samplerate()  {
    }
  AudioRecorderRequest_(const ContainerAllocator& _alloc)
    : file_path(_alloc)
    , secs(_alloc)
    , audio_type(_alloc)
    , left_channel(_alloc)
    , right_channel(_alloc)
    , front_channel(_alloc)
    , rear_channel(_alloc)
    , samplerate(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::String_<ContainerAllocator>  _file_path_type;
  _file_path_type file_path;

   typedef  ::std_msgs::Int32_<ContainerAllocator>  _secs_type;
  _secs_type secs;

   typedef  ::std_msgs::Char_<ContainerAllocator>  _audio_type_type;
  _audio_type_type audio_type;

   typedef  ::std_msgs::Bool_<ContainerAllocator>  _left_channel_type;
  _left_channel_type left_channel;

   typedef  ::std_msgs::Bool_<ContainerAllocator>  _right_channel_type;
  _right_channel_type right_channel;

   typedef  ::std_msgs::Bool_<ContainerAllocator>  _front_channel_type;
  _front_channel_type front_channel;

   typedef  ::std_msgs::Bool_<ContainerAllocator>  _rear_channel_type;
  _rear_channel_type rear_channel;

   typedef  ::std_msgs::Int32_<ContainerAllocator>  _samplerate_type;
  _samplerate_type samplerate;




  typedef boost::shared_ptr< ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AudioRecorderRequest_

typedef ::nao_interaction_msgs::AudioRecorderRequest_<std::allocator<void> > AudioRecorderRequest;

typedef boost::shared_ptr< ::nao_interaction_msgs::AudioRecorderRequest > AudioRecorderRequestPtr;
typedef boost::shared_ptr< ::nao_interaction_msgs::AudioRecorderRequest const> AudioRecorderRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace nao_interaction_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/indigo/share/trajectory_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'nao_interaction_msgs': ['/home/charles/catkin_ws/src/naoqi_interaction/nao_interaction_msgs/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b211df69b24b5ed7b95654b151a08b5c";
  }

  static const char* value(const ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb211df69b24b5ed7ULL;
  static const uint64_t static_value2 = 0xb95654b151a08b5cULL;
};

template<class ContainerAllocator>
struct DataType< ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nao_interaction_msgs/AudioRecorderRequest";
  }

  static const char* value(const ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
\n\
std_msgs/String file_path\n\
std_msgs/Int32 secs\n\
\n\
\n\
std_msgs/Char audio_type\n\
\n\
std_msgs/Bool left_channel\n\
std_msgs/Bool right_channel\n\
std_msgs/Bool front_channel\n\
std_msgs/Bool rear_channel\n\
\n\
\n\
std_msgs/Int32 samplerate\n\
\n\
================================================================================\n\
MSG: std_msgs/String\n\
string data\n\
\n\
================================================================================\n\
MSG: std_msgs/Int32\n\
int32 data\n\
================================================================================\n\
MSG: std_msgs/Char\n\
char data\n\
================================================================================\n\
MSG: std_msgs/Bool\n\
bool data\n\
";
  }

  static const char* value(const ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.file_path);
      stream.next(m.secs);
      stream.next(m.audio_type);
      stream.next(m.left_channel);
      stream.next(m.right_channel);
      stream.next(m.front_channel);
      stream.next(m.rear_channel);
      stream.next(m.samplerate);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AudioRecorderRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nao_interaction_msgs::AudioRecorderRequest_<ContainerAllocator>& v)
  {
    s << indent << "file_path: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.file_path);
    s << indent << "secs: ";
    s << std::endl;
    Printer< ::std_msgs::Int32_<ContainerAllocator> >::stream(s, indent + "  ", v.secs);
    s << indent << "audio_type: ";
    s << std::endl;
    Printer< ::std_msgs::Char_<ContainerAllocator> >::stream(s, indent + "  ", v.audio_type);
    s << indent << "left_channel: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.left_channel);
    s << indent << "right_channel: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.right_channel);
    s << indent << "front_channel: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.front_channel);
    s << indent << "rear_channel: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.rear_channel);
    s << indent << "samplerate: ";
    s << std::endl;
    Printer< ::std_msgs::Int32_<ContainerAllocator> >::stream(s, indent + "  ", v.samplerate);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAO_INTERACTION_MSGS_MESSAGE_AUDIORECORDERREQUEST_H
