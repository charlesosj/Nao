// Generated by gencpp from file pal_navigation_msgs/PolarReading.msg
// DO NOT EDIT!


#ifndef PAL_NAVIGATION_MSGS_MESSAGE_POLARREADING_H
#define PAL_NAVIGATION_MSGS_MESSAGE_POLARREADING_H


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
struct PolarReading_
{
  typedef PolarReading_<ContainerAllocator> Type;

  PolarReading_()
    : angle(0.0)
    , distance(0.0)  {
    }
  PolarReading_(const ContainerAllocator& _alloc)
    : angle(0.0)
    , distance(0.0)  {
  (void)_alloc;
    }



   typedef float _angle_type;
  _angle_type angle;

   typedef float _distance_type;
  _distance_type distance;




  typedef boost::shared_ptr< ::pal_navigation_msgs::PolarReading_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pal_navigation_msgs::PolarReading_<ContainerAllocator> const> ConstPtr;

}; // struct PolarReading_

typedef ::pal_navigation_msgs::PolarReading_<std::allocator<void> > PolarReading;

typedef boost::shared_ptr< ::pal_navigation_msgs::PolarReading > PolarReadingPtr;
typedef boost::shared_ptr< ::pal_navigation_msgs::PolarReading const> PolarReadingConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pal_navigation_msgs::PolarReading_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pal_navigation_msgs::PolarReading_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::pal_navigation_msgs::PolarReading_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_navigation_msgs::PolarReading_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_navigation_msgs::PolarReading_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_navigation_msgs::PolarReading_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_navigation_msgs::PolarReading_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_navigation_msgs::PolarReading_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pal_navigation_msgs::PolarReading_<ContainerAllocator> >
{
  static const char* value()
  {
    return "817840b8f4d2300f89b98e0187dc919a";
  }

  static const char* value(const ::pal_navigation_msgs::PolarReading_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x817840b8f4d2300fULL;
  static const uint64_t static_value2 = 0x89b98e0187dc919aULL;
};

template<class ContainerAllocator>
struct DataType< ::pal_navigation_msgs::PolarReading_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pal_navigation_msgs/PolarReading";
  }

  static const char* value(const ::pal_navigation_msgs::PolarReading_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pal_navigation_msgs::PolarReading_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Polar reading: a distance to a given angle\n\
float32 angle # inradians\n\
\n\
float32 distance # in meters\n\
\n\
";
  }

  static const char* value(const ::pal_navigation_msgs::PolarReading_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pal_navigation_msgs::PolarReading_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angle);
      stream.next(m.distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct PolarReading_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pal_navigation_msgs::PolarReading_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pal_navigation_msgs::PolarReading_<ContainerAllocator>& v)
  {
    s << indent << "angle: ";
    Printer<float>::stream(s, indent + "  ", v.angle);
    s << indent << "distance: ";
    Printer<float>::stream(s, indent + "  ", v.distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAL_NAVIGATION_MSGS_MESSAGE_POLARREADING_H
