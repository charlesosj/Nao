// Generated by gencpp from file pal_interaction_msgs/SoundLocalisationServiceRequest.msg
// DO NOT EDIT!


#ifndef PAL_INTERACTION_MSGS_MESSAGE_SOUNDLOCALISATIONSERVICEREQUEST_H
#define PAL_INTERACTION_MSGS_MESSAGE_SOUNDLOCALISATIONSERVICEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <pal_interaction_msgs/EnablingSoundLocalisation.h>

namespace pal_interaction_msgs
{
template <class ContainerAllocator>
struct SoundLocalisationServiceRequest_
{
  typedef SoundLocalisationServiceRequest_<ContainerAllocator> Type;

  SoundLocalisationServiceRequest_()
    : enabling()  {
    }
  SoundLocalisationServiceRequest_(const ContainerAllocator& _alloc)
    : enabling(_alloc)  {
  (void)_alloc;
    }



   typedef  ::pal_interaction_msgs::EnablingSoundLocalisation_<ContainerAllocator>  _enabling_type;
  _enabling_type enabling;




  typedef boost::shared_ptr< ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SoundLocalisationServiceRequest_

typedef ::pal_interaction_msgs::SoundLocalisationServiceRequest_<std::allocator<void> > SoundLocalisationServiceRequest;

typedef boost::shared_ptr< ::pal_interaction_msgs::SoundLocalisationServiceRequest > SoundLocalisationServiceRequestPtr;
typedef boost::shared_ptr< ::pal_interaction_msgs::SoundLocalisationServiceRequest const> SoundLocalisationServiceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pal_interaction_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'pal_interaction_msgs': ['/home/charles/catkin_ws/src/pal_msgs/pal_interaction_msgs/msg', '/home/charles/catkin_ws/devel/share/pal_interaction_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cc68fffb4060073f9a9cee5375c725ea";
  }

  static const char* value(const ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcc68fffb4060073fULL;
  static const uint64_t static_value2 = 0x9a9cee5375c725eaULL;
};

template<class ContainerAllocator>
struct DataType< ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pal_interaction_msgs/SoundLocalisationServiceRequest";
  }

  static const char* value(const ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pal_interaction_msgs/EnablingSoundLocalisation enabling\n\
\n\
================================================================================\n\
MSG: pal_interaction_msgs/EnablingSoundLocalisation\n\
bool enable\n\
";
  }

  static const char* value(const ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.enabling);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct SoundLocalisationServiceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pal_interaction_msgs::SoundLocalisationServiceRequest_<ContainerAllocator>& v)
  {
    s << indent << "enabling: ";
    s << std::endl;
    Printer< ::pal_interaction_msgs::EnablingSoundLocalisation_<ContainerAllocator> >::stream(s, indent + "  ", v.enabling);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAL_INTERACTION_MSGS_MESSAGE_SOUNDLOCALISATIONSERVICEREQUEST_H
