# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pal_detection_msgs/PersonDetection.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import pal_detection_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class PersonDetection(genpy.Message):
  _md5sum = "e3c696a3e9a746473dc492f12e81a1f5"
  _type = "pal_detection_msgs/PersonDetection"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """## Contains detection correspondences among the different person detectors available

# full body image detection. If width == height == 0 then no full body detection is available
pal_detection_msgs/Detection2d full_body

# face image detection. If width == height == 0 then the face has not been detected
pal_detection_msgs/FaceDetection face

# leg detection in laser scan. If Point is (0,0,0) then no legs have been detected
pal_detection_msgs/LegDetections legs

# 3D position of the person with respect to a given frame specified in the header of the PointStamped.
# If the position is not available then (0,0,0) is set.
geometry_msgs/PointStamped position3D 


================================================================================
MSG: pal_detection_msgs/Detection2d
## Rectangle defined by a point, its width and height
# corresponds to the openCV struct : CvRect

# coordinates of the top left corner of the box
int64 x
int64 y

# width of the box
int64 width

# height of the box
int64 height


================================================================================
MSG: pal_detection_msgs/FaceDetection

##########################################
#
# Face detection data
#
##########################################

#####################
# Face bounding box
#####################
# coordinates of the top left corner of the box
int32 x
int32 y

# width of the box
int32 width

# height of the box
int32 height

############################
# Eyes position (if found)
############################

bool eyesLocated

int32 leftEyeX
int32 leftEyeY
int32 rightEyeX
int32 rightEyeY

#############################
# Centre of eyes 3D estimate
#############################
geometry_msgs/Point32 position


############################
# Person recognition
############################

string name
float32 confidence

############################
# Facial expression
############################
string EXPRESSION_NEUTRAL="neutral"
string EXPRESSION_SMILE="smile"
string EXPRESSION_RAISED_BROWS="raised brows"
string EXPRESSION_EYES_AWAY="eyes away"
string EXPRESSION_SQUINTING="squinting"
string EXPRESSION_FROWNING="frowning"
string expression
float32 expression_confidence


================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: pal_detection_msgs/LegDetections
## Contains data relative to the detection of the legs of persons in a laser scan

Header header

geometry_msgs/Point[]  position3D    # 3D position of the persons' legs in a given frame

# Optional transformation between the laser frame and a certain parent frame
geometry_msgs/TransformStamped laser_pose


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href="http://www.ros.org/wiki/tf">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point
"""
  __slots__ = ['full_body','face','legs','position3D']
  _slot_types = ['pal_detection_msgs/Detection2d','pal_detection_msgs/FaceDetection','pal_detection_msgs/LegDetections','geometry_msgs/PointStamped']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       full_body,face,legs,position3D

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PersonDetection, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.full_body is None:
        self.full_body = pal_detection_msgs.msg.Detection2d()
      if self.face is None:
        self.face = pal_detection_msgs.msg.FaceDetection()
      if self.legs is None:
        self.legs = pal_detection_msgs.msg.LegDetections()
      if self.position3D is None:
        self.position3D = geometry_msgs.msg.PointStamped()
    else:
      self.full_body = pal_detection_msgs.msg.Detection2d()
      self.face = pal_detection_msgs.msg.FaceDetection()
      self.legs = pal_detection_msgs.msg.LegDetections()
      self.position3D = geometry_msgs.msg.PointStamped()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_4q4iB4i3f.pack(_x.full_body.x, _x.full_body.y, _x.full_body.width, _x.full_body.height, _x.face.x, _x.face.y, _x.face.width, _x.face.height, _x.face.eyesLocated, _x.face.leftEyeX, _x.face.leftEyeY, _x.face.rightEyeX, _x.face.rightEyeY, _x.face.position.x, _x.face.position.y, _x.face.position.z))
      _x = self.face.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_f.pack(self.face.confidence))
      _x = self.face.expression
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_f3I.pack(_x.face.expression_confidence, _x.legs.header.seq, _x.legs.header.stamp.secs, _x.legs.header.stamp.nsecs))
      _x = self.legs.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.legs.position3D)
      buff.write(_struct_I.pack(length))
      for val1 in self.legs.position3D:
        _x = val1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_struct_3I.pack(_x.legs.laser_pose.header.seq, _x.legs.laser_pose.header.stamp.secs, _x.legs.laser_pose.header.stamp.nsecs))
      _x = self.legs.laser_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.legs.laser_pose.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.legs.laser_pose.transform.translation.x, _x.legs.laser_pose.transform.translation.y, _x.legs.laser_pose.transform.translation.z, _x.legs.laser_pose.transform.rotation.x, _x.legs.laser_pose.transform.rotation.y, _x.legs.laser_pose.transform.rotation.z, _x.legs.laser_pose.transform.rotation.w, _x.position3D.header.seq, _x.position3D.header.stamp.secs, _x.position3D.header.stamp.nsecs))
      _x = self.position3D.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3d.pack(_x.position3D.point.x, _x.position3D.point.y, _x.position3D.point.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.full_body is None:
        self.full_body = pal_detection_msgs.msg.Detection2d()
      if self.face is None:
        self.face = pal_detection_msgs.msg.FaceDetection()
      if self.legs is None:
        self.legs = pal_detection_msgs.msg.LegDetections()
      if self.position3D is None:
        self.position3D = geometry_msgs.msg.PointStamped()
      end = 0
      _x = self
      start = end
      end += 77
      (_x.full_body.x, _x.full_body.y, _x.full_body.width, _x.full_body.height, _x.face.x, _x.face.y, _x.face.width, _x.face.height, _x.face.eyesLocated, _x.face.leftEyeX, _x.face.leftEyeY, _x.face.rightEyeX, _x.face.rightEyeY, _x.face.position.x, _x.face.position.y, _x.face.position.z,) = _struct_4q4iB4i3f.unpack(str[start:end])
      self.face.eyesLocated = bool(self.face.eyesLocated)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.face.name = str[start:end].decode('utf-8')
      else:
        self.face.name = str[start:end]
      start = end
      end += 4
      (self.face.confidence,) = _struct_f.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.face.expression = str[start:end].decode('utf-8')
      else:
        self.face.expression = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.face.expression_confidence, _x.legs.header.seq, _x.legs.header.stamp.secs, _x.legs.header.stamp.nsecs,) = _struct_f3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.legs.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.legs.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.legs.position3D = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        self.legs.position3D.append(val1)
      _x = self
      start = end
      end += 12
      (_x.legs.laser_pose.header.seq, _x.legs.laser_pose.header.stamp.secs, _x.legs.laser_pose.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.legs.laser_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.legs.laser_pose.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.legs.laser_pose.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.legs.laser_pose.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.legs.laser_pose.transform.translation.x, _x.legs.laser_pose.transform.translation.y, _x.legs.laser_pose.transform.translation.z, _x.legs.laser_pose.transform.rotation.x, _x.legs.laser_pose.transform.rotation.y, _x.legs.laser_pose.transform.rotation.z, _x.legs.laser_pose.transform.rotation.w, _x.position3D.header.seq, _x.position3D.header.stamp.secs, _x.position3D.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.position3D.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.position3D.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.position3D.point.x, _x.position3D.point.y, _x.position3D.point.z,) = _struct_3d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_4q4iB4i3f.pack(_x.full_body.x, _x.full_body.y, _x.full_body.width, _x.full_body.height, _x.face.x, _x.face.y, _x.face.width, _x.face.height, _x.face.eyesLocated, _x.face.leftEyeX, _x.face.leftEyeY, _x.face.rightEyeX, _x.face.rightEyeY, _x.face.position.x, _x.face.position.y, _x.face.position.z))
      _x = self.face.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_f.pack(self.face.confidence))
      _x = self.face.expression
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_f3I.pack(_x.face.expression_confidence, _x.legs.header.seq, _x.legs.header.stamp.secs, _x.legs.header.stamp.nsecs))
      _x = self.legs.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.legs.position3D)
      buff.write(_struct_I.pack(length))
      for val1 in self.legs.position3D:
        _x = val1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_struct_3I.pack(_x.legs.laser_pose.header.seq, _x.legs.laser_pose.header.stamp.secs, _x.legs.laser_pose.header.stamp.nsecs))
      _x = self.legs.laser_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.legs.laser_pose.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.legs.laser_pose.transform.translation.x, _x.legs.laser_pose.transform.translation.y, _x.legs.laser_pose.transform.translation.z, _x.legs.laser_pose.transform.rotation.x, _x.legs.laser_pose.transform.rotation.y, _x.legs.laser_pose.transform.rotation.z, _x.legs.laser_pose.transform.rotation.w, _x.position3D.header.seq, _x.position3D.header.stamp.secs, _x.position3D.header.stamp.nsecs))
      _x = self.position3D.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3d.pack(_x.position3D.point.x, _x.position3D.point.y, _x.position3D.point.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.full_body is None:
        self.full_body = pal_detection_msgs.msg.Detection2d()
      if self.face is None:
        self.face = pal_detection_msgs.msg.FaceDetection()
      if self.legs is None:
        self.legs = pal_detection_msgs.msg.LegDetections()
      if self.position3D is None:
        self.position3D = geometry_msgs.msg.PointStamped()
      end = 0
      _x = self
      start = end
      end += 77
      (_x.full_body.x, _x.full_body.y, _x.full_body.width, _x.full_body.height, _x.face.x, _x.face.y, _x.face.width, _x.face.height, _x.face.eyesLocated, _x.face.leftEyeX, _x.face.leftEyeY, _x.face.rightEyeX, _x.face.rightEyeY, _x.face.position.x, _x.face.position.y, _x.face.position.z,) = _struct_4q4iB4i3f.unpack(str[start:end])
      self.face.eyesLocated = bool(self.face.eyesLocated)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.face.name = str[start:end].decode('utf-8')
      else:
        self.face.name = str[start:end]
      start = end
      end += 4
      (self.face.confidence,) = _struct_f.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.face.expression = str[start:end].decode('utf-8')
      else:
        self.face.expression = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.face.expression_confidence, _x.legs.header.seq, _x.legs.header.stamp.secs, _x.legs.header.stamp.nsecs,) = _struct_f3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.legs.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.legs.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.legs.position3D = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        self.legs.position3D.append(val1)
      _x = self
      start = end
      end += 12
      (_x.legs.laser_pose.header.seq, _x.legs.laser_pose.header.stamp.secs, _x.legs.laser_pose.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.legs.laser_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.legs.laser_pose.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.legs.laser_pose.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.legs.laser_pose.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.legs.laser_pose.transform.translation.x, _x.legs.laser_pose.transform.translation.y, _x.legs.laser_pose.transform.translation.z, _x.legs.laser_pose.transform.rotation.x, _x.legs.laser_pose.transform.rotation.y, _x.legs.laser_pose.transform.rotation.z, _x.legs.laser_pose.transform.rotation.w, _x.position3D.header.seq, _x.position3D.header.stamp.secs, _x.position3D.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.position3D.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.position3D.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.position3D.point.x, _x.position3D.point.y, _x.position3D.point.z,) = _struct_3d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_f = struct.Struct("<f")
_struct_f3I = struct.Struct("<f3I")
_struct_3I = struct.Struct("<3I")
_struct_4q4iB4i3f = struct.Struct("<4q4iB4i3f")
_struct_7d3I = struct.Struct("<7d3I")
_struct_3d = struct.Struct("<3d")
