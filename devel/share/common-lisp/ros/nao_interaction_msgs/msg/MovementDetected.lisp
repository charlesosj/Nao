; Auto-generated. Do not edit!


(cl:in-package nao_interaction_msgs-msg)


;//! \htmlinclude MovementDetected.msg.html

(cl:defclass <MovementDetected> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gravity_center
    :reader gravity_center
    :initarg :gravity_center
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (mean_velocity
    :reader mean_velocity
    :initarg :mean_velocity
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (points_poses
    :reader points_poses
    :initarg :points_poses
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (points_speeds
    :reader points_speeds
    :initarg :points_speeds
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass MovementDetected (<MovementDetected>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MovementDetected>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MovementDetected)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_interaction_msgs-msg:<MovementDetected> is deprecated: use nao_interaction_msgs-msg:MovementDetected instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MovementDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:header-val is deprecated.  Use nao_interaction_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gravity_center-val :lambda-list '(m))
(cl:defmethod gravity_center-val ((m <MovementDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:gravity_center-val is deprecated.  Use nao_interaction_msgs-msg:gravity_center instead.")
  (gravity_center m))

(cl:ensure-generic-function 'mean_velocity-val :lambda-list '(m))
(cl:defmethod mean_velocity-val ((m <MovementDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mean_velocity-val is deprecated.  Use nao_interaction_msgs-msg:mean_velocity instead.")
  (mean_velocity m))

(cl:ensure-generic-function 'points_poses-val :lambda-list '(m))
(cl:defmethod points_poses-val ((m <MovementDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:points_poses-val is deprecated.  Use nao_interaction_msgs-msg:points_poses instead.")
  (points_poses m))

(cl:ensure-generic-function 'points_speeds-val :lambda-list '(m))
(cl:defmethod points_speeds-val ((m <MovementDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:points_speeds-val is deprecated.  Use nao_interaction_msgs-msg:points_speeds instead.")
  (points_speeds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MovementDetected>) ostream)
  "Serializes a message object of type '<MovementDetected>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gravity_center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mean_velocity) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points_poses))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_speeds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points_speeds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MovementDetected>) istream)
  "Deserializes a message object of type '<MovementDetected>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gravity_center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mean_velocity) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_speeds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_speeds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MovementDetected>)))
  "Returns string type for a message object of type '<MovementDetected>"
  "nao_interaction_msgs/MovementDetected")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MovementDetected)))
  "Returns string type for a message object of type 'MovementDetected"
  "nao_interaction_msgs/MovementDetected")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MovementDetected>)))
  "Returns md5sum for a message object of type '<MovementDetected>"
  "ae24dbf38f441d6f1cae72eb224ecd17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MovementDetected)))
  "Returns md5sum for a message object of type 'MovementDetected"
  "ae24dbf38f441d6f1cae72eb224ecd17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MovementDetected>)))
  "Returns full string definition for message of type '<MovementDetected>"
  (cl:format cl:nil "# Message emitted by Nao movement detection module.~%# Contains information about the motion detection module~%~%Header header~%~%# [x,y] contains the angular coordinates (in radians) of the center of gravity of the cluster~%geometry_msgs/Point gravity_center~%~%# [vx,vy] corresponds to the mean velocity of the cluster, computed from the velocity of all the moving points. It is an angular velocity, expressed in radians/s~%geometry_msgs/Point mean_velocity~%~%# Coordinates of the moving points~%geometry_msgs/Point[] points_poses~%~%# Velocities of the moving points~%geometry_msgs/Point[] points_speeds~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MovementDetected)))
  "Returns full string definition for message of type 'MovementDetected"
  (cl:format cl:nil "# Message emitted by Nao movement detection module.~%# Contains information about the motion detection module~%~%Header header~%~%# [x,y] contains the angular coordinates (in radians) of the center of gravity of the cluster~%geometry_msgs/Point gravity_center~%~%# [vx,vy] corresponds to the mean velocity of the cluster, computed from the velocity of all the moving points. It is an angular velocity, expressed in radians/s~%geometry_msgs/Point mean_velocity~%~%# Coordinates of the moving points~%geometry_msgs/Point[] points_poses~%~%# Velocities of the moving points~%geometry_msgs/Point[] points_speeds~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MovementDetected>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gravity_center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mean_velocity))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_speeds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MovementDetected>))
  "Converts a ROS message object to a list"
  (cl:list 'MovementDetected
    (cl:cons ':header (header msg))
    (cl:cons ':gravity_center (gravity_center msg))
    (cl:cons ':mean_velocity (mean_velocity msg))
    (cl:cons ':points_poses (points_poses msg))
    (cl:cons ':points_speeds (points_speeds msg))
))
