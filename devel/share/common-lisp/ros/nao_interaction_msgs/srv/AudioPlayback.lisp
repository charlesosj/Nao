; Auto-generated. Do not edit!


(cl:in-package nao_interaction_msgs-srv)


;//! \htmlinclude AudioPlayback-request.msg.html

(cl:defclass <AudioPlayback-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass AudioPlayback-request (<AudioPlayback-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioPlayback-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioPlayback-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_interaction_msgs-srv:<AudioPlayback-request> is deprecated: use nao_interaction_msgs-srv:AudioPlayback-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <AudioPlayback-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-srv:file_path-val is deprecated.  Use nao_interaction_msgs-srv:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioPlayback-request>) ostream)
  "Serializes a message object of type '<AudioPlayback-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'file_path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioPlayback-request>) istream)
  "Deserializes a message object of type '<AudioPlayback-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'file_path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioPlayback-request>)))
  "Returns string type for a service object of type '<AudioPlayback-request>"
  "nao_interaction_msgs/AudioPlaybackRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioPlayback-request)))
  "Returns string type for a service object of type 'AudioPlayback-request"
  "nao_interaction_msgs/AudioPlaybackRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioPlayback-request>)))
  "Returns md5sum for a message object of type '<AudioPlayback-request>"
  "0bc1b80cbf52b04c96479758726740cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioPlayback-request)))
  "Returns md5sum for a message object of type 'AudioPlayback-request"
  "0bc1b80cbf52b04c96479758726740cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioPlayback-request>)))
  "Returns full string definition for message of type '<AudioPlayback-request>"
  (cl:format cl:nil "~%~%~%std_msgs/String file_path~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioPlayback-request)))
  "Returns full string definition for message of type 'AudioPlayback-request"
  (cl:format cl:nil "~%~%~%std_msgs/String file_path~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioPlayback-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioPlayback-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioPlayback-request
    (cl:cons ':file_path (file_path msg))
))
;//! \htmlinclude AudioPlayback-response.msg.html

(cl:defclass <AudioPlayback-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AudioPlayback-response (<AudioPlayback-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioPlayback-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioPlayback-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_interaction_msgs-srv:<AudioPlayback-response> is deprecated: use nao_interaction_msgs-srv:AudioPlayback-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioPlayback-response>) ostream)
  "Serializes a message object of type '<AudioPlayback-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioPlayback-response>) istream)
  "Deserializes a message object of type '<AudioPlayback-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioPlayback-response>)))
  "Returns string type for a service object of type '<AudioPlayback-response>"
  "nao_interaction_msgs/AudioPlaybackResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioPlayback-response)))
  "Returns string type for a service object of type 'AudioPlayback-response"
  "nao_interaction_msgs/AudioPlaybackResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioPlayback-response>)))
  "Returns md5sum for a message object of type '<AudioPlayback-response>"
  "0bc1b80cbf52b04c96479758726740cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioPlayback-response)))
  "Returns md5sum for a message object of type 'AudioPlayback-response"
  "0bc1b80cbf52b04c96479758726740cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioPlayback-response>)))
  "Returns full string definition for message of type '<AudioPlayback-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioPlayback-response)))
  "Returns full string definition for message of type 'AudioPlayback-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioPlayback-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioPlayback-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioPlayback-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AudioPlayback)))
  'AudioPlayback-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AudioPlayback)))
  'AudioPlayback-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioPlayback)))
  "Returns string type for a service object of type '<AudioPlayback>"
  "nao_interaction_msgs/AudioPlayback")