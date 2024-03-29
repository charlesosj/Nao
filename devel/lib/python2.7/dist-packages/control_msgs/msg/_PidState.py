# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from control_msgs/PidState.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import std_msgs.msg

class PidState(genpy.Message):
  _md5sum = "b138ec00e886c10e73f27e8712252ea6"
  _type = "control_msgs/PidState"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header
duration timestep
float64 error
float64 error_dot
float64 p_error
float64 i_error
float64 d_error
float64 p_term
float64 i_term
float64 d_term
float64 i_max
float64 i_min
float64 output

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
"""
  __slots__ = ['header','timestep','error','error_dot','p_error','i_error','d_error','p_term','i_term','d_term','i_max','i_min','output']
  _slot_types = ['std_msgs/Header','duration','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,timestep,error,error_dot,p_error,i_error,d_error,p_term,i_term,d_term,i_max,i_min,output

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PidState, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.timestep is None:
        self.timestep = genpy.Duration()
      if self.error is None:
        self.error = 0.
      if self.error_dot is None:
        self.error_dot = 0.
      if self.p_error is None:
        self.p_error = 0.
      if self.i_error is None:
        self.i_error = 0.
      if self.d_error is None:
        self.d_error = 0.
      if self.p_term is None:
        self.p_term = 0.
      if self.i_term is None:
        self.i_term = 0.
      if self.d_term is None:
        self.d_term = 0.
      if self.i_max is None:
        self.i_max = 0.
      if self.i_min is None:
        self.i_min = 0.
      if self.output is None:
        self.output = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.timestep = genpy.Duration()
      self.error = 0.
      self.error_dot = 0.
      self.p_error = 0.
      self.i_error = 0.
      self.d_error = 0.
      self.p_term = 0.
      self.i_term = 0.
      self.d_term = 0.
      self.i_max = 0.
      self.i_min = 0.
      self.output = 0.

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
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2i11d.pack(_x.timestep.secs, _x.timestep.nsecs, _x.error, _x.error_dot, _x.p_error, _x.i_error, _x.d_error, _x.p_term, _x.i_term, _x.d_term, _x.i_max, _x.i_min, _x.output))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.timestep is None:
        self.timestep = genpy.Duration()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 96
      (_x.timestep.secs, _x.timestep.nsecs, _x.error, _x.error_dot, _x.p_error, _x.i_error, _x.d_error, _x.p_term, _x.i_term, _x.d_term, _x.i_max, _x.i_min, _x.output,) = _struct_2i11d.unpack(str[start:end])
      self.timestep.canon()
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
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2i11d.pack(_x.timestep.secs, _x.timestep.nsecs, _x.error, _x.error_dot, _x.p_error, _x.i_error, _x.d_error, _x.p_term, _x.i_term, _x.d_term, _x.i_max, _x.i_min, _x.output))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.timestep is None:
        self.timestep = genpy.Duration()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 96
      (_x.timestep.secs, _x.timestep.nsecs, _x.error, _x.error_dot, _x.p_error, _x.i_error, _x.d_error, _x.p_term, _x.i_term, _x.d_term, _x.i_max, _x.i_min, _x.output,) = _struct_2i11d.unpack(str[start:end])
      self.timestep.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_2i11d = struct.Struct("<2i11d")
