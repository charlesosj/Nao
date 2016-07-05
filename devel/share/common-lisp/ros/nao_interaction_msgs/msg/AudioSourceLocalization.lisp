; Auto-generated. Do not edit!


(cl:in-package nao_interaction_msgs-msg)


;//! \htmlinclude AudioSourceLocalization.msg.html

(cl:defclass <AudioSourceLocalization> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (elevation
    :reader elevation
    :initarg :elevation
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (confidence
    :reader confidence
    :initarg :confidence
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (energy
    :reader energy
    :initarg :energy
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (head_pose
    :reader head_pose
    :initarg :head_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass AudioSourceLocalization (<AudioSourceLocalization>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioSourceLocalization>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioSourceLocalization)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_interaction_msgs-msg:<AudioSourceLocalization> is deprecated: use nao_interaction_msgs-msg:AudioSourceLocalization instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AudioSourceLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:header-val is deprecated.  Use nao_interaction_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <AudioSourceLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:azimuth-val is deprecated.  Use nao_interaction_msgs-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'elevation-val :lambda-list '(m))
(cl:defmethod elevation-val ((m <AudioSourceLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:elevation-val is deprecated.  Use nao_interaction_msgs-msg:elevation instead.")
  (elevation m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <AudioSourceLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:confidence-val is deprecated.  Use nao_interaction_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'energy-val :lambda-list '(m))
(cl:defmethod energy-val ((m <AudioSourceLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:energy-val is deprecated.  Use nao_interaction_msgs-msg:energy instead.")
  (energy m))

(cl:ensure-generic-function 'head_pose-val :lambda-list '(m))
(cl:defmethod head_pose-val ((m <AudioSourceLocalization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:head_pose-val is deprecated.  Use nao_interaction_msgs-msg:head_pose instead.")
  (head_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioSourceLocalization>) ostream)
  "Serializes a message object of type '<AudioSourceLocalization>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'azimuth) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'elevation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'confidence) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'energy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioSourceLocalization>) istream)
  "Deserializes a message object of type '<AudioSourceLocalization>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'azimuth) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'elevation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'confidence) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'energy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioSourceLocalization>)))
  "Returns string type for a message object of type '<AudioSourceLocalization>"
  "nao_interaction_msgs/AudioSourceLocalization")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioSourceLocalization)))
  "Returns string type for a message object of type 'AudioSourceLocalization"
  "nao_interaction_msgs/AudioSourceLocalization")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioSourceLocalization>)))
  "Returns md5sum for a message object of type '<AudioSourceLocalization>"
  "5c65a283c3f4c0f07561982b3d8c4f13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioSourceLocalization)))
  "Returns md5sum for a message object of type 'AudioSourceLocalization"
  "5c65a283c3f4c0f07561982b3d8c4f13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioSourceLocalization>)))
  "Returns full string definition for message of type '<AudioSourceLocalization>"
  (cl:format cl:nil "# Message emitted by Nao ALAudioSourceLocalizationProxy wrapper.~%# Contains information about sound localization~%~%Header header~%~%std_msgs/Float32 azimuth~%std_msgs/Float32 elevation~%std_msgs/Float32 confidence~%std_msgs/Float32 energy~%~%geometry_msgs/Pose head_pose~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioSourceLocalization)))
  "Returns full string definition for message of type 'AudioSourceLocalization"
  (cl:format cl:nil "# Message emitted by Nao ALAudioSourceLocalizationProxy wrapper.~%# Contains information about sound localization~%~%Header header~%~%std_msgs/Float32 azimuth~%std_msgs/Float32 elevation~%std_msgs/Float32 confidence~%std_msgs/Float32 energy~%~%geometry_msgs/Pose head_pose~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioSourceLocalization>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'azimuth))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'elevation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'confidence))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'energy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioSourceLocalization>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioSourceLocalization
    (cl:cons ':header (header msg))
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':elevation (elevation msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':energy (energy msg))
    (cl:cons ':head_pose (head_pose msg))
))
