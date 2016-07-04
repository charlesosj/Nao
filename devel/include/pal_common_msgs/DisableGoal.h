// Generated by gencpp from file pal_common_msgs/DisableGoal.msg
// DO NOT EDIT!


#ifndef PAL_COMMON_MSGS_MESSAGE_DISABLEGOAL_H
#define PAL_COMMON_MSGS_MESSAGE_DISABLEGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pal_common_msgs
{
template <class ContainerAllocator>
struct DisableGoal_
{
  typedef DisableGoal_<ContainerAllocator> Type;

  DisableGoal_()
    : duration(0.0)  {
    }
  DisableGoal_(const ContainerAllocator& _alloc)
    : duration(0.0)  {
  (void)_alloc;
    }



   typedef float _duration_type;
  _duration_type duration;




  typedef boost::shared_ptr< ::pal_common_msgs::DisableGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pal_common_msgs::DisableGoal_<ContainerAllocator> const> ConstPtr;

}; // struct DisableGoal_

typedef ::pal_common_msgs::DisableGoal_<std::allocator<void> > DisableGoal;

typedef boost::shared_ptr< ::pal_common_msgs::DisableGoal > DisableGoalPtr;
typedef boost::shared_ptr< ::pal_common_msgs::DisableGoal const> DisableGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pal_common_msgs::DisableGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pal_common_msgs::DisableGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pal_common_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'pal_common_msgs': ['/home/charles/catkin_ws/devel/share/pal_common_msgs/msg', '/home/charles/catkin_ws/src/pal_msgs/pal_common_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pal_common_msgs::DisableGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_common_msgs::DisableGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_common_msgs::DisableGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_common_msgs::DisableGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_common_msgs::DisableGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_common_msgs::DisableGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pal_common_msgs::DisableGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f17ffa2323e97e44a94d55c2699df849";
  }

  static const char* value(const ::pal_common_msgs::DisableGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf17ffa2323e97e44ULL;
  static const uint64_t static_value2 = 0xa94d55c2699df849ULL;
};

template<class ContainerAllocator>
struct DataType< ::pal_common_msgs::DisableGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pal_common_msgs/DisableGoal";
  }

  static const char* value(const ::pal_common_msgs::DisableGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pal_common_msgs::DisableGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# This action disables a functionality for a set amount of seconds.\n\
# A negative or zero value will disable it until the goal is canceled\n\
\n\
float32 duration # [s] for how long to disable the functionality\n\
";
  }

  static const char* value(const ::pal_common_msgs::DisableGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pal_common_msgs::DisableGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct DisableGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pal_common_msgs::DisableGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pal_common_msgs::DisableGoal_<ContainerAllocator>& v)
  {
    s << indent << "duration: ";
    Printer<float>::stream(s, indent + "  ", v.duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAL_COMMON_MSGS_MESSAGE_DISABLEGOAL_H
