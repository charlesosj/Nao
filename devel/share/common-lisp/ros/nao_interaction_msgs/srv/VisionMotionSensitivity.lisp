; Auto-generated. Do not edit!


(cl:in-package nao_interaction_msgs-srv)


;//! \htmlinclude VisionMotionSensitivity-request.msg.html

(cl:defclass <VisionMotionSensitivity-request> (roslisp-msg-protocol:ros-message)
  ((sensitivity
    :reader sensitivity
    :initarg :sensitivity
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass VisionMotionSensitivity-request (<VisionMotionSensitivity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionMotionSensitivity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionMotionSensitivity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_interaction_msgs-srv:<VisionMotionSensitivity-request> is deprecated: use nao_interaction_msgs-srv:VisionMotionSensitivity-request instead.")))

(cl:ensure-generic-function 'sensitivity-val :lambda-list '(m))
(cl:defmethod sensitivity-val ((m <VisionMotionSensitivity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-srv:sensitivity-val is deprecated.  Use nao_interaction_msgs-srv:sensitivity instead.")
  (sensitivity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionMotionSensitivity-request>) ostream)
  "Serializes a message object of type '<VisionMotionSensitivity-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensitivity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionMotionSensitivity-request>) istream)
  "Deserializes a message object of type '<VisionMotionSensitivity-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensitivity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionMotionSensitivity-request>)))
  "Returns string type for a service object of type '<VisionMotionSensitivity-request>"
  "nao_interaction_msgs/VisionMotionSensitivityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionMotionSensitivity-request)))
  "Returns string type for a service object of type 'VisionMotionSensitivity-request"
  "nao_interaction_msgs/VisionMotionSensitivityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionMotionSensitivity-request>)))
  "Returns md5sum for a message object of type '<VisionMotionSensitivity-request>"
  "ef4dcf0f6275a2f726c89cb40c7fcf0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionMotionSensitivity-request)))
  "Returns md5sum for a message object of type 'VisionMotionSensitivity-request"
  "ef4dcf0f6275a2f726c89cb40c7fcf0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionMotionSensitivity-request>)))
  "Returns full string definition for message of type '<VisionMotionSensitivity-request>"
  (cl:format cl:nil "~%~%~%std_msgs/Float32 sensitivity~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionMotionSensitivity-request)))
  "Returns full string definition for message of type 'VisionMotionSensitivity-request"
  (cl:format cl:nil "~%~%~%std_msgs/Float32 sensitivity~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionMotionSensitivity-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensitivity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionMotionSensitivity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionMotionSensitivity-request
    (cl:cons ':sensitivity (sensitivity msg))
))
;//! \htmlinclude VisionMotionSensitivity-response.msg.html

(cl:defclass <VisionMotionSensitivity-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass VisionMotionSensitivity-response (<VisionMotionSensitivity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionMotionSensitivity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionMotionSensitivity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_interaction_msgs-srv:<VisionMotionSensitivity-response> is deprecated: use nao_interaction_msgs-srv:VisionMotionSensitivity-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionMotionSensitivity-response>) ostream)
  "Serializes a message object of type '<VisionMotionSensitivity-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionMotionSensitivity-response>) istream)
  "Deserializes a message object of type '<VisionMotionSensitivity-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionMotionSensitivity-response>)))
  "Returns string type for a service object of type '<VisionMotionSensitivity-response>"
  "nao_interaction_msgs/VisionMotionSensitivityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionMotionSensitivity-response)))
  "Returns string type for a service object of type 'VisionMotionSensitivity-response"
  "nao_interaction_msgs/VisionMotionSensitivityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionMotionSensitivity-response>)))
  "Returns md5sum for a message object of type '<VisionMotionSensitivity-response>"
  "ef4dcf0f6275a2f726c89cb40c7fcf0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionMotionSensitivity-response)))
  "Returns md5sum for a message object of type 'VisionMotionSensitivity-response"
  "ef4dcf0f6275a2f726c89cb40c7fcf0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionMotionSensitivity-response>)))
  "Returns full string definition for message of type '<VisionMotionSensitivity-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionMotionSensitivity-response)))
  "Returns full string definition for message of type 'VisionMotionSensitivity-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionMotionSensitivity-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionMotionSensitivity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionMotionSensitivity-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VisionMotionSensitivity)))
  'VisionMotionSensitivity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VisionMotionSensitivity)))
  'VisionMotionSensitivity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionMotionSensitivity)))
  "Returns string type for a service object of type '<VisionMotionSensitivity>"
  "nao_interaction_msgs/VisionMotionSensitivity")