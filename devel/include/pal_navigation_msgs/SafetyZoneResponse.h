// Generated by gencpp from file pal_navigation_msgs/SafetyZoneResponse.msg
// DO NOT EDIT!


#ifndef PAL_NAVIGATION_MSGS_MESSAGE_SAFETYZONERESPONSE_H
#define PAL_NAVIGATION_MSGS_MESSAGE_SAFETYZONERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pal_navigation_msgs
{
template <class ContainerAllocator>
struct SafetyZoneResponse_
{
  typedef SafetyZoneResponse_<ContainerAllocator> Type;

  SafetyZoneResponse_()
    : leftSafe(false)
    , leftMinDist(0.0)
    , leftMinDistAngleRad(0.0)
    , rightSafe(false)
    , rightMinDist(0.0)
    , rightMinDistAngleRad(0.0)  {
    }
  SafetyZoneResponse_(const ContainerAllocator& _alloc)
    : leftSafe(false)
    , leftMinDist(0.0)
    , leftMinDistAngleRad(0.0)
    , rightSafe(false)
    , rightMinDist(0.0)
    , rightMinDistAngleRad(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _leftSafe_type;
  _leftSafe_type leftSafe;

   typedef double _leftMinDist_type;
  _leftMinDist_type leftMinDist;

   typedef double _leftMinDistAngleRad_type;
  _leftMinDistAngleRad_type leftMinDistAngleRad;

   typedef uint8_t _rightSafe_type;
  _rightSafe_type rightSafe;

   typedef double _rightMinDist_type;
  _rightMinDist_type rightMinDist;

   typedef double _rightMinDistAngleRad_type;
  _rightMinDistAngleRad_type rightMinDistAngleRad;




  typedef boost::shared_ptr< ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SafetyZoneResponse_

typedef ::pal_navigation_msgs::SafetyZoneResponse_<std::allocator<void> > SafetyZoneResponse;

typedef boost::shared_ptr< ::pal_navigation_msgs::SafetyZoneResponse > SafetyZoneResponsePtr;
typedef boost::shared_ptr< ::pal_navigation_msgs::SafetyZoneResponse const> SafetyZoneResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pal_navigation_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'pal_navigation_msgs': ['/home/charles/catkin_ws/devel/share/pal_navigation_msgs/msg', '/home/charles/catkin_ws/src/pal_msgs/pal_navigation_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e2ae1feeb09d43547ad602b6e1dca6d7";
  }

  static const char* value(const ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe2ae1feeb09d4354ULL;
  static const uint64_t static_value2 = 0x7ad602b6e1dca6d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pal_navigation_msgs/SafetyZoneResponse";
  }

  static const char* value(const ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
\n\
bool leftSafe\n\
float64 leftMinDist\n\
float64 leftMinDistAngleRad\n\
\n\
bool rightSafe\n\
float64 rightMinDist\n\
float64 rightMinDistAngleRad\n\
\n\
";
  }

  static const char* value(const ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.leftSafe);
      stream.next(m.leftMinDist);
      stream.next(m.leftMinDistAngleRad);
      stream.next(m.rightSafe);
      stream.next(m.rightMinDist);
      stream.next(m.rightMinDistAngleRad);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct SafetyZoneResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pal_navigation_msgs::SafetyZoneResponse_<ContainerAllocator>& v)
  {
    s << indent << "leftSafe: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.leftSafe);
    s << indent << "leftMinDist: ";
    Printer<double>::stream(s, indent + "  ", v.leftMinDist);
    s << indent << "leftMinDistAngleRad: ";
    Printer<double>::stream(s, indent + "  ", v.leftMinDistAngleRad);
    s << indent << "rightSafe: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.rightSafe);
    s << indent << "rightMinDist: ";
    Printer<double>::stream(s, indent + "  ", v.rightMinDist);
    s << indent << "rightMinDistAngleRad: ";
    Printer<double>::stream(s, indent + "  ", v.rightMinDistAngleRad);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAL_NAVIGATION_MSGS_MESSAGE_SAFETYZONERESPONSE_H
