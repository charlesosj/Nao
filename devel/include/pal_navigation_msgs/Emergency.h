// Generated by gencpp from file pal_navigation_msgs/Emergency.msg
// DO NOT EDIT!


#ifndef PAL_NAVIGATION_MSGS_MESSAGE_EMERGENCY_H
#define PAL_NAVIGATION_MSGS_MESSAGE_EMERGENCY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/String.h>

namespace pal_navigation_msgs
{
template <class ContainerAllocator>
struct Emergency_
{
  typedef Emergency_<ContainerAllocator> Type;

  Emergency_()
    : data(false)
    , forward(false)
    , backward(false)
    , msgs()  {
    }
  Emergency_(const ContainerAllocator& _alloc)
    : data(false)
    , forward(false)
    , backward(false)
    , msgs(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _data_type;
  _data_type data;

   typedef uint8_t _forward_type;
  _forward_type forward;

   typedef uint8_t _backward_type;
  _backward_type backward;

   typedef std::vector< ::std_msgs::String_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::std_msgs::String_<ContainerAllocator> >::other >  _msgs_type;
  _msgs_type msgs;




  typedef boost::shared_ptr< ::pal_navigation_msgs::Emergency_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pal_navigation_msgs::Emergency_<ContainerAllocator> const> ConstPtr;

}; // struct Emergency_

typedef ::pal_navigation_msgs::Emergency_<std::allocator<void> > Emergency;

typedef boost::shared_ptr< ::pal_navigation_msgs::Emergency > EmergencyPtr;
typedef boost::shared_ptr< ::pal_navigation_msgs::Emergency const> EmergencyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pal_navigation_msgs::Emergency_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pal_navigation_msgs::Emergency_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pal_navigation_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'pal_navigation_msgs': ['/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg', '/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pal_navigation_msgs::Emergency_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_navigation_msgs::Emergency_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_navigation_msgs::Emergency_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_navigation_msgs::Emergency_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_navigation_msgs::Emergency_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_navigation_msgs::Emergency_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pal_navigation_msgs::Emergency_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a23e1ed551a213a5d03f1cf6db037717";
  }

  static const char* value(const ::pal_navigation_msgs::Emergency_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa23e1ed551a213a5ULL;
  static const uint64_t static_value2 = 0xd03f1cf6db037717ULL;
};

template<class ContainerAllocator>
struct DataType< ::pal_navigation_msgs::Emergency_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pal_navigation_msgs/Emergency";
  }

  static const char* value(const ::pal_navigation_msgs::Emergency_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pal_navigation_msgs::Emergency_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Emergency stop msg\n\
bool data\n\
bool forward\n\
bool backward\n\
std_msgs/String[] msgs\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/String\n\
string data\n\
";
  }

  static const char* value(const ::pal_navigation_msgs::Emergency_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pal_navigation_msgs::Emergency_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
      stream.next(m.forward);
      stream.next(m.backward);
      stream.next(m.msgs);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct Emergency_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pal_navigation_msgs::Emergency_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pal_navigation_msgs::Emergency_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.data);
    s << indent << "forward: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.forward);
    s << indent << "backward: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.backward);
    s << indent << "msgs[]" << std::endl;
    for (size_t i = 0; i < v.msgs.size(); ++i)
    {
      s << indent << "  msgs[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "    ", v.msgs[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAL_NAVIGATION_MSGS_MESSAGE_EMERGENCY_H
