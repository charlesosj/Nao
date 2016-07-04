// Generated by gencpp from file pal_vision_msgs/HogDetections.msg
// DO NOT EDIT!


#ifndef PAL_VISION_MSGS_MESSAGE_HOGDETECTIONS_H
#define PAL_VISION_MSGS_MESSAGE_HOGDETECTIONS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <pal_vision_msgs/HogDetection.h>

namespace pal_vision_msgs
{
template <class ContainerAllocator>
struct HogDetections_
{
  typedef HogDetections_<ContainerAllocator> Type;

  HogDetections_()
    : header()
    , imgID(0)
    , persons()  {
    }
  HogDetections_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , imgID(0)
    , persons(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _imgID_type;
  _imgID_type imgID;

   typedef std::vector< ::pal_vision_msgs::HogDetection_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::pal_vision_msgs::HogDetection_<ContainerAllocator> >::other >  _persons_type;
  _persons_type persons;




  typedef boost::shared_ptr< ::pal_vision_msgs::HogDetections_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pal_vision_msgs::HogDetections_<ContainerAllocator> const> ConstPtr;

}; // struct HogDetections_

typedef ::pal_vision_msgs::HogDetections_<std::allocator<void> > HogDetections;

typedef boost::shared_ptr< ::pal_vision_msgs::HogDetections > HogDetectionsPtr;
typedef boost::shared_ptr< ::pal_vision_msgs::HogDetections const> HogDetectionsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pal_vision_msgs::HogDetections_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pal_vision_msgs::HogDetections_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pal_vision_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'pal_vision_msgs': ['/home/charles/catkin_ws/src/pal_msgs/pal_vision_msgs/msg', '/home/charles/catkin_ws/devel/share/pal_vision_msgs/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pal_vision_msgs::HogDetections_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_vision_msgs::HogDetections_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_vision_msgs::HogDetections_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_vision_msgs::HogDetections_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_vision_msgs::HogDetections_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_vision_msgs::HogDetections_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pal_vision_msgs::HogDetections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6a2b9c8c4c785ae7eec19468d16ba3c8";
  }

  static const char* value(const ::pal_vision_msgs::HogDetections_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6a2b9c8c4c785ae7ULL;
  static const uint64_t static_value2 = 0xeec19468d16ba3c8ULL;
};

template<class ContainerAllocator>
struct DataType< ::pal_vision_msgs::HogDetections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pal_vision_msgs/HogDetections";
  }

  static const char* value(const ::pal_vision_msgs::HogDetections_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pal_vision_msgs::HogDetections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "## Contains data relative to the detection of person in an image using the HOG descriptor\n\
\n\
Header header\n\
\n\
uint32                           imgID    #image sequence ID in which the faces have been detected. Images are published in /person/image\n\
pal_vision_msgs/HogDetection[]   persons  #vector of HOG detections\n\
\n\
\n\
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
\n\
================================================================================\n\
MSG: pal_vision_msgs/HogDetection\n\
## Contains data relative to the detection of a person using the HOG descriptor\n\
\n\
pal_vision_msgs/Rectangle  imageBoundingBox         # bounding box of image region in which the person has been detected\n\
geometry_msgs/Vector3      direction                # unitary vector expressing in what direction wrt the robot base frame the person is\n\
float32[]                  hog                      # HOG descriptor of the person region\n\
std_msgs/ColorRGBA         principalEigenVectorRGB  # Eigen vector (remember this is an unitary vector) corresponding to the maximum eigen value of all the RGB values in the person region. \n\
std_msgs/ColorRGBA[]       rgbClusterCenters        # RGB cluster centers of the person region in the image obtained using k-means. The rgb components are expressed in [0..1]\n\
uint32[]                   rgbDescriptor1           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 1)\n\
uint32[]                   rgbDescriptor2           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 2)\n\
\n\
\n\
\n\
\n\
================================================================================\n\
MSG: pal_vision_msgs/Rectangle\n\
## Rectangle defined by a point, its width and height\n\
# corresponds to the openCV struct : CvRect\n\
\n\
# coordinates of the top left corner of the box\n\
int64 x\n\
int64 y\n\
\n\
# wigth of the box\n\
int64 width\n\
\n\
# height of the box\n\
int64 height\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: std_msgs/ColorRGBA\n\
float32 r\n\
float32 g\n\
float32 b\n\
float32 a\n\
";
  }

  static const char* value(const ::pal_vision_msgs::HogDetections_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pal_vision_msgs::HogDetections_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.imgID);
      stream.next(m.persons);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct HogDetections_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pal_vision_msgs::HogDetections_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pal_vision_msgs::HogDetections_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "imgID: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.imgID);
    s << indent << "persons[]" << std::endl;
    for (size_t i = 0; i < v.persons.size(); ++i)
    {
      s << indent << "  persons[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::pal_vision_msgs::HogDetection_<ContainerAllocator> >::stream(s, indent + "    ", v.persons[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAL_VISION_MSGS_MESSAGE_HOGDETECTIONS_H
