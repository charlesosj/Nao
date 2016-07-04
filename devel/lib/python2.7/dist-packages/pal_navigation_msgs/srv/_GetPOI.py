# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pal_navigation_msgs/GetPOIRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetPOIRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "pal_navigation_msgs/GetPOIRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetPOIRequest, self).__init__(*args, **kwds)

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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pal_navigation_msgs/GetPOIResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import pal_navigation_msgs.msg
import std_msgs.msg
import sensor_msgs.msg

class GetPOIResponse(genpy.Message):
  _md5sum = "f0a8811f1068c7b1269d9e58c608681f"
  _type = "pal_navigation_msgs/GetPOIResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """


pal_navigation_msgs/POI   poi



================================================================================
MSG: pal_navigation_msgs/POI
# Poi (Point of interest)

sensor_msgs/PointCloud points

std_msgs/String[]      ids

std_msgs/String        map_id

================================================================================
MSG: sensor_msgs/PointCloud
# This message holds a collection of 3d points, plus optional additional
# information about each point.

# Time of sensor data acquisition, coordinate frame ID.
Header header

# Array of 3d points. Each Point32 should be interpreted as a 3d point
# in the frame given in the header.
geometry_msgs/Point32[] points

# Each channel should have the same number of elements as points array,
# and the data in each channel should correspond 1:1 with each point.
# Channel names in common practice are listed in ChannelFloat32.msg.
ChannelFloat32[] channels

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
MSG: sensor_msgs/ChannelFloat32
# This message is used by the PointCloud message to hold optional data
# associated with each point in the cloud. The length of the values
# array should be the same as the length of the points array in the
# PointCloud, and each value should be associated with the corresponding
# point.

# Channel names in existing practice include:
#   "u", "v" - row and column (respectively) in the left stereo image.
#              This is opposite to usual conventions but remains for
#              historical reasons. The newer PointCloud2 message has no
#              such problem.
#   "rgb" - For point clouds produced by color stereo cameras. uint8
#           (R,G,B) values packed into the least significant 24 bits,
#           in order.
#   "intensity" - laser or pixel intensity.
#   "distance"

# The channel name should give semantics of the channel (e.g.
# "intensity" instead of "value").
string name

# The values array should be 1-1 with the elements of the associated
# PointCloud.
float32[] values

================================================================================
MSG: std_msgs/String
string data
"""
  __slots__ = ['poi']
  _slot_types = ['pal_navigation_msgs/POI']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       poi

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetPOIResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.poi is None:
        self.poi = pal_navigation_msgs.msg.POI()
    else:
      self.poi = pal_navigation_msgs.msg.POI()

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
      buff.write(_struct_3I.pack(_x.poi.points.header.seq, _x.poi.points.header.stamp.secs, _x.poi.points.header.stamp.nsecs))
      _x = self.poi.points.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.poi.points.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.poi.points.points:
        _x = val1
        buff.write(_struct_3f.pack(_x.x, _x.y, _x.z))
      length = len(self.poi.points.channels)
      buff.write(_struct_I.pack(length))
      for val1 in self.poi.points.channels:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.values)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.pack(pattern, *val1.values))
      length = len(self.poi.ids)
      buff.write(_struct_I.pack(length))
      for val1 in self.poi.ids:
        _x = val1.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.poi.map_id.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.poi is None:
        self.poi = pal_navigation_msgs.msg.POI()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.poi.points.header.seq, _x.poi.points.header.stamp.secs, _x.poi.points.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.poi.points.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.poi.points.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.poi.points.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _struct_3f.unpack(str[start:end])
        self.poi.points.points.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.poi.points.channels = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.ChannelFloat32()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.values = struct.unpack(pattern, str[start:end])
        self.poi.points.channels.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.poi.ids = []
      for i in range(0, length):
        val1 = std_msgs.msg.String()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.data = str[start:end].decode('utf-8')
        else:
          val1.data = str[start:end]
        self.poi.ids.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.poi.map_id.data = str[start:end].decode('utf-8')
      else:
        self.poi.map_id.data = str[start:end]
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
      buff.write(_struct_3I.pack(_x.poi.points.header.seq, _x.poi.points.header.stamp.secs, _x.poi.points.header.stamp.nsecs))
      _x = self.poi.points.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.poi.points.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.poi.points.points:
        _x = val1
        buff.write(_struct_3f.pack(_x.x, _x.y, _x.z))
      length = len(self.poi.points.channels)
      buff.write(_struct_I.pack(length))
      for val1 in self.poi.points.channels:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.values)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.values.tostring())
      length = len(self.poi.ids)
      buff.write(_struct_I.pack(length))
      for val1 in self.poi.ids:
        _x = val1.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.poi.map_id.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.poi is None:
        self.poi = pal_navigation_msgs.msg.POI()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.poi.points.header.seq, _x.poi.points.header.stamp.secs, _x.poi.points.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.poi.points.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.poi.points.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.poi.points.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _struct_3f.unpack(str[start:end])
        self.poi.points.points.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.poi.points.channels = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.ChannelFloat32()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.values = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.poi.points.channels.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.poi.ids = []
      for i in range(0, length):
        val1 = std_msgs.msg.String()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.data = str[start:end].decode('utf-8')
        else:
          val1.data = str[start:end]
        self.poi.ids.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.poi.map_id.data = str[start:end].decode('utf-8')
      else:
        self.poi.map_id.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_3f = struct.Struct("<3f")
class GetPOI(object):
  _type          = 'pal_navigation_msgs/GetPOI'
  _md5sum = 'f0a8811f1068c7b1269d9e58c608681f'
  _request_class  = GetPOIRequest
  _response_class = GetPOIResponse
