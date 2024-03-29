// Generated by gencpp from file pal_detection_msgs/AddTexturedObjectRequest.msg
// DO NOT EDIT!


#ifndef PAL_DETECTION_MSGS_MESSAGE_ADDTEXTUREDOBJECTREQUEST_H
#define PAL_DETECTION_MSGS_MESSAGE_ADDTEXTUREDOBJECTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>

namespace pal_detection_msgs
{
template <class ContainerAllocator>
struct AddTexturedObjectRequest_
{
  typedef AddTexturedObjectRequest_<ContainerAllocator> Type;

  AddTexturedObjectRequest_()
    : img()
    , fullPathFileName()  {
    }
  AddTexturedObjectRequest_(const ContainerAllocator& _alloc)
    : img(_alloc)
    , fullPathFileName(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _img_type;
  _img_type img;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _fullPathFileName_type;
  _fullPathFileName_type fullPathFileName;




  typedef boost::shared_ptr< ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AddTexturedObjectRequest_

typedef ::pal_detection_msgs::AddTexturedObjectRequest_<std::allocator<void> > AddTexturedObjectRequest;

typedef boost::shared_ptr< ::pal_detection_msgs::AddTexturedObjectRequest > AddTexturedObjectRequestPtr;
typedef boost::shared_ptr< ::pal_detection_msgs::AddTexturedObjectRequest const> AddTexturedObjectRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pal_detection_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'pal_detection_msgs': ['/home/charles/catkin_ws/src/pal_msgs/pal_detection_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0f96af0a8a35c0ce1d024a65fb87b554";
  }

  static const char* value(const ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0f96af0a8a35c0ceULL;
  static const uint64_t static_value2 = 0x1d024a65fb87b554ULL;
};

template<class ContainerAllocator>
struct DataType< ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pal_detection_msgs/AddTexturedObjectRequest";
  }

  static const char* value(const ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
sensor_msgs/Image img\n\
string fullPathFileName\n\
\n\
\n\
\n\
\n\
\n\
\n\
================================================================================\n\
MSG: sensor_msgs/Image\n\
# This message contains an uncompressed image\n\
# (0, 0) is at top-left corner of image\n\
#\n\
\n\
Header header        # Header timestamp should be acquisition time of image\n\
                     # Header frame_id should be optical frame of camera\n\
                     # origin of frame should be optical center of cameara\n\
                     # +x should point to the right in the image\n\
                     # +y should point down in the image\n\
                     # +z should point into to plane of the image\n\
                     # If the frame_id here and the frame_id of the CameraInfo\n\
                     # message associated with the image conflict\n\
                     # the behavior is undefined\n\
\n\
uint32 height         # image height, that is, number of rows\n\
uint32 width          # image width, that is, number of columns\n\
\n\
# The legal values for encoding are in file src/image_encodings.cpp\n\
# If you want to standardize a new string format, join\n\
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n\
\n\
string encoding       # Encoding of pixels -- channel meaning, ordering, size\n\
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n\
\n\
uint8 is_bigendian    # is this data bigendian?\n\
uint32 step           # Full row length in bytes\n\
uint8[] data          # actual matrix data, size is (step * rows)\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.img);
      stream.next(m.fullPathFileName);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct AddTexturedObjectRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pal_detection_msgs::AddTexturedObjectRequest_<ContainerAllocator>& v)
  {
    s << indent << "img: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.img);
    s << indent << "fullPathFileName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.fullPathFileName);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAL_DETECTION_MSGS_MESSAGE_ADDTEXTUREDOBJECTREQUEST_H
