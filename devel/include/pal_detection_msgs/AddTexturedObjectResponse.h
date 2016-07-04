// Generated by gencpp from file pal_detection_msgs/AddTexturedObjectResponse.msg
// DO NOT EDIT!


#ifndef PAL_DETECTION_MSGS_MESSAGE_ADDTEXTUREDOBJECTRESPONSE_H
#define PAL_DETECTION_MSGS_MESSAGE_ADDTEXTUREDOBJECTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pal_detection_msgs
{
template <class ContainerAllocator>
struct AddTexturedObjectResponse_
{
  typedef AddTexturedObjectResponse_<ContainerAllocator> Type;

  AddTexturedObjectResponse_()
    : result(false)  {
    }
  AddTexturedObjectResponse_(const ContainerAllocator& _alloc)
    : result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;




  typedef boost::shared_ptr< ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> const> ConstPtr;

}; // struct AddTexturedObjectResponse_

typedef ::pal_detection_msgs::AddTexturedObjectResponse_<std::allocator<void> > AddTexturedObjectResponse;

typedef boost::shared_ptr< ::pal_detection_msgs::AddTexturedObjectResponse > AddTexturedObjectResponsePtr;
typedef boost::shared_ptr< ::pal_detection_msgs::AddTexturedObjectResponse const> AddTexturedObjectResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pal_detection_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'pal_detection_msgs': ['/home/charles/catkin_ws/src/pal_msgs/pal_detection_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb13ac1f1354ccecULL;
  static const uint64_t static_value2 = 0xb7941ee8fa2192e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pal_detection_msgs/AddTexturedObjectResponse";
  }

  static const char* value(const ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n\
\n\
\n\
\n\
";
  }

  static const char* value(const ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct AddTexturedObjectResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pal_detection_msgs::AddTexturedObjectResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAL_DETECTION_MSGS_MESSAGE_ADDTEXTUREDOBJECTRESPONSE_H
