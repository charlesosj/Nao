; Auto-generated. Do not edit!


(cl:in-package nao_interaction_msgs-srv)


;//! \htmlinclude AudioMasterVolume-request.msg.html

(cl:defclass <AudioMasterVolume-request> (roslisp-msg-protocol:ros-message)
  ((master_volume
    :reader master_volume
    :initarg :master_volume
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass AudioMasterVolume-request (<AudioMasterVolume-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioMasterVolume-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioMasterVolume-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_interaction_msgs-srv:<AudioMasterVolume-request> is deprecated: use nao_interaction_msgs-srv:AudioMasterVolume-request instead.")))

(cl:ensure-generic-function 'master_volume-val :lambda-list '(m))
(cl:defmethod master_volume-val ((m <AudioMasterVolume-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-srv:master_volume-val is deprecated.  Use nao_interaction_msgs-srv:master_volume instead.")
  (master_volume m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioMasterVolume-request>) ostream)
  "Serializes a message object of type '<AudioMasterVolume-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'master_volume) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioMasterVolume-request>) istream)
  "Deserializes a message object of type '<AudioMasterVolume-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'master_volume) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioMasterVolume-request>)))
  "Returns string type for a service object of type '<AudioMasterVolume-request>"
  "nao_interaction_msgs/AudioMasterVolumeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioMasterVolume-request)))
  "Returns string type for a service object of type 'AudioMasterVolume-request"
  "nao_interaction_msgs/AudioMasterVolumeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioMasterVolume-request>)))
  "Returns md5sum for a message object of type '<AudioMasterVolume-request>"
  "6a2d45c5fcf9fd89299667da81b32d64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioMasterVolume-request)))
  "Returns md5sum for a message object of type 'AudioMasterVolume-request"
  "6a2d45c5fcf9fd89299667da81b32d64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioMasterVolume-request>)))
  "Returns full string definition for message of type '<AudioMasterVolume-request>"
  (cl:format cl:nil "~%~%~%std_msgs/Int32 master_volume~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioMasterVolume-request)))
  "Returns full string definition for message of type 'AudioMasterVolume-request"
  (cl:format cl:nil "~%~%~%std_msgs/Int32 master_volume~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioMasterVolume-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'master_volume))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioMasterVolume-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioMasterVolume-request
    (cl:cons ':master_volume (master_volume msg))
))
;//! \htmlinclude AudioMasterVolume-response.msg.html

(cl:defclass <AudioMasterVolume-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AudioMasterVolume-response (<AudioMasterVolume-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioMasterVolume-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioMasterVolume-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_interaction_msgs-srv:<AudioMasterVolume-response> is deprecated: use nao_interaction_msgs-srv:AudioMasterVolume-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioMasterVolume-response>) ostream)
  "Serializes a message object of type '<AudioMasterVolume-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioMasterVolume-response>) istream)
  "Deserializes a message object of type '<AudioMasterVolume-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioMasterVolume-response>)))
  "Returns string type for a service object of type '<AudioMasterVolume-response>"
  "nao_interaction_msgs/AudioMasterVolumeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioMasterVolume-response)))
  "Returns string type for a service object of type 'AudioMasterVolume-response"
  "nao_interaction_msgs/AudioMasterVolumeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioMasterVolume-response>)))
  "Returns md5sum for a message object of type '<AudioMasterVolume-response>"
  "6a2d45c5fcf9fd89299667da81b32d64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioMasterVolume-response)))
  "Returns md5sum for a message object of type 'AudioMasterVolume-response"
  "6a2d45c5fcf9fd89299667da81b32d64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioMasterVolume-response>)))
  "Returns full string definition for message of type '<AudioMasterVolume-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioMasterVolume-response)))
  "Returns full string definition for message of type 'AudioMasterVolume-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioMasterVolume-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioMasterVolume-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioMasterVolume-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AudioMasterVolume)))
  'AudioMasterVolume-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AudioMasterVolume)))
  'AudioMasterVolume-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioMasterVolume)))
  "Returns string type for a service object of type '<AudioMasterVolume>"
  "nao_interaction_msgs/AudioMasterVolume")