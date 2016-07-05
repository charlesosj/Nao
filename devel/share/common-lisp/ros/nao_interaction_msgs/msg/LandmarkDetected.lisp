; Auto-generated. Do not edit!


(cl:in-package nao_interaction_msgs-msg)


;//! \htmlinclude LandmarkDetected.msg.html

(cl:defclass <LandmarkDetected> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mark_ids
    :reader mark_ids
    :initarg :mark_ids
    :type (cl:vector std_msgs-msg:Int32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Int32 :initial-element (cl:make-instance 'std_msgs-msg:Int32)))
   (shape_alpha
    :reader shape_alpha
    :initarg :shape_alpha
    :type (cl:vector std_msgs-msg:Float32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float32 :initial-element (cl:make-instance 'std_msgs-msg:Float32)))
   (shape_beta
    :reader shape_beta
    :initarg :shape_beta
    :type (cl:vector std_msgs-msg:Float32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float32 :initial-element (cl:make-instance 'std_msgs-msg:Float32)))
   (shape_sizex
    :reader shape_sizex
    :initarg :shape_sizex
    :type (cl:vector std_msgs-msg:Float32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float32 :initial-element (cl:make-instance 'std_msgs-msg:Float32)))
   (shape_sizey
    :reader shape_sizey
    :initarg :shape_sizey
    :type (cl:vector std_msgs-msg:Float32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float32 :initial-element (cl:make-instance 'std_msgs-msg:Float32)))
   (camera_local_pose
    :reader camera_local_pose
    :initarg :camera_local_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (camera_world_pose
    :reader camera_world_pose
    :initarg :camera_world_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (camera_name
    :reader camera_name
    :initarg :camera_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass LandmarkDetected (<LandmarkDetected>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandmarkDetected>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandmarkDetected)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_interaction_msgs-msg:<LandmarkDetected> is deprecated: use nao_interaction_msgs-msg:LandmarkDetected instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LandmarkDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:header-val is deprecated.  Use nao_interaction_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mark_ids-val :lambda-list '(m))
(cl:defmethod mark_ids-val ((m <LandmarkDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mark_ids-val is deprecated.  Use nao_interaction_msgs-msg:mark_ids instead.")
  (mark_ids m))

(cl:ensure-generic-function 'shape_alpha-val :lambda-list '(m))
(cl:defmethod shape_alpha-val ((m <LandmarkDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:shape_alpha-val is deprecated.  Use nao_interaction_msgs-msg:shape_alpha instead.")
  (shape_alpha m))

(cl:ensure-generic-function 'shape_beta-val :lambda-list '(m))
(cl:defmethod shape_beta-val ((m <LandmarkDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:shape_beta-val is deprecated.  Use nao_interaction_msgs-msg:shape_beta instead.")
  (shape_beta m))

(cl:ensure-generic-function 'shape_sizex-val :lambda-list '(m))
(cl:defmethod shape_sizex-val ((m <LandmarkDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:shape_sizex-val is deprecated.  Use nao_interaction_msgs-msg:shape_sizex instead.")
  (shape_sizex m))

(cl:ensure-generic-function 'shape_sizey-val :lambda-list '(m))
(cl:defmethod shape_sizey-val ((m <LandmarkDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:shape_sizey-val is deprecated.  Use nao_interaction_msgs-msg:shape_sizey instead.")
  (shape_sizey m))

(cl:ensure-generic-function 'camera_local_pose-val :lambda-list '(m))
(cl:defmethod camera_local_pose-val ((m <LandmarkDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:camera_local_pose-val is deprecated.  Use nao_interaction_msgs-msg:camera_local_pose instead.")
  (camera_local_pose m))

(cl:ensure-generic-function 'camera_world_pose-val :lambda-list '(m))
(cl:defmethod camera_world_pose-val ((m <LandmarkDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:camera_world_pose-val is deprecated.  Use nao_interaction_msgs-msg:camera_world_pose instead.")
  (camera_world_pose m))

(cl:ensure-generic-function 'camera_name-val :lambda-list '(m))
(cl:defmethod camera_name-val ((m <LandmarkDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:camera_name-val is deprecated.  Use nao_interaction_msgs-msg:camera_name instead.")
  (camera_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandmarkDetected>) ostream)
  "Serializes a message object of type '<LandmarkDetected>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mark_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mark_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape_alpha))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'shape_alpha))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape_beta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'shape_beta))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape_sizex))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'shape_sizex))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape_sizey))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'shape_sizey))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_local_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_world_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_name) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandmarkDetected>) istream)
  "Deserializes a message object of type '<LandmarkDetected>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mark_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mark_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Int32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shape_alpha) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape_alpha)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shape_beta) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape_beta)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shape_sizex) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape_sizex)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shape_sizey) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape_sizey)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_local_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_world_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_name) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandmarkDetected>)))
  "Returns string type for a message object of type '<LandmarkDetected>"
  "nao_interaction_msgs/LandmarkDetected")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandmarkDetected)))
  "Returns string type for a message object of type 'LandmarkDetected"
  "nao_interaction_msgs/LandmarkDetected")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandmarkDetected>)))
  "Returns md5sum for a message object of type '<LandmarkDetected>"
  "4d97e85c0a306501da5d22b795cdac76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandmarkDetected)))
  "Returns md5sum for a message object of type 'LandmarkDetected"
  "4d97e85c0a306501da5d22b795cdac76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandmarkDetected>)))
  "Returns full string definition for message of type '<LandmarkDetected>"
  (cl:format cl:nil "# Message emitted by Nao landmark detection module.~%# Contains information about the landmarks detected~%~%Header header~%~%# Vectors holding the landmark information~%std_msgs/Int32[] mark_ids~%std_msgs/Float32[] shape_alpha~%std_msgs/Float32[] shape_beta~%std_msgs/Float32[] shape_sizex~%std_msgs/Float32[] shape_sizey~%~%geometry_msgs/Pose camera_local_pose~%~%geometry_msgs/Pose camera_world_pose~%~%std_msgs/String camera_name~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandmarkDetected)))
  "Returns full string definition for message of type 'LandmarkDetected"
  (cl:format cl:nil "# Message emitted by Nao landmark detection module.~%# Contains information about the landmarks detected~%~%Header header~%~%# Vectors holding the landmark information~%std_msgs/Int32[] mark_ids~%std_msgs/Float32[] shape_alpha~%std_msgs/Float32[] shape_beta~%std_msgs/Float32[] shape_sizex~%std_msgs/Float32[] shape_sizey~%~%geometry_msgs/Pose camera_local_pose~%~%geometry_msgs/Pose camera_world_pose~%~%std_msgs/String camera_name~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandmarkDetected>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mark_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape_alpha) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape_beta) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape_sizex) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape_sizey) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_local_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_world_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandmarkDetected>))
  "Converts a ROS message object to a list"
  (cl:list 'LandmarkDetected
    (cl:cons ':header (header msg))
    (cl:cons ':mark_ids (mark_ids msg))
    (cl:cons ':shape_alpha (shape_alpha msg))
    (cl:cons ':shape_beta (shape_beta msg))
    (cl:cons ':shape_sizex (shape_sizex msg))
    (cl:cons ':shape_sizey (shape_sizey msg))
    (cl:cons ':camera_local_pose (camera_local_pose msg))
    (cl:cons ':camera_world_pose (camera_world_pose msg))
    (cl:cons ':camera_name (camera_name msg))
))
