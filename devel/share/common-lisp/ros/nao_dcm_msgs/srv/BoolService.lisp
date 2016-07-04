; Auto-generated. Do not edit!


(cl:in-package nao_dcm_msgs-srv)


;//! \htmlinclude BoolService-request.msg.html

(cl:defclass <BoolService-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BoolService-request (<BoolService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoolService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoolService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_dcm_msgs-srv:<BoolService-request> is deprecated: use nao_dcm_msgs-srv:BoolService-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <BoolService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-srv:enable-val is deprecated.  Use nao_dcm_msgs-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoolService-request>) ostream)
  "Serializes a message object of type '<BoolService-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoolService-request>) istream)
  "Deserializes a message object of type '<BoolService-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoolService-request>)))
  "Returns string type for a service object of type '<BoolService-request>"
  "nao_dcm_msgs/BoolServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoolService-request)))
  "Returns string type for a service object of type 'BoolService-request"
  "nao_dcm_msgs/BoolServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoolService-request>)))
  "Returns md5sum for a message object of type '<BoolService-request>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoolService-request)))
  "Returns md5sum for a message object of type 'BoolService-request"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoolService-request>)))
  "Returns full string definition for message of type '<BoolService-request>"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoolService-request)))
  "Returns full string definition for message of type 'BoolService-request"
  (cl:format cl:nil "bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoolService-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoolService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BoolService-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude BoolService-response.msg.html

(cl:defclass <BoolService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass BoolService-response (<BoolService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoolService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoolService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_dcm_msgs-srv:<BoolService-response> is deprecated: use nao_dcm_msgs-srv:BoolService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoolService-response>) ostream)
  "Serializes a message object of type '<BoolService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoolService-response>) istream)
  "Deserializes a message object of type '<BoolService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoolService-response>)))
  "Returns string type for a service object of type '<BoolService-response>"
  "nao_dcm_msgs/BoolServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoolService-response)))
  "Returns string type for a service object of type 'BoolService-response"
  "nao_dcm_msgs/BoolServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoolService-response>)))
  "Returns md5sum for a message object of type '<BoolService-response>"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoolService-response)))
  "Returns md5sum for a message object of type 'BoolService-response"
  "8c1211af706069c994c06e00eb59ac9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoolService-response>)))
  "Returns full string definition for message of type '<BoolService-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoolService-response)))
  "Returns full string definition for message of type 'BoolService-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoolService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoolService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BoolService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BoolService)))
  'BoolService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BoolService)))
  'BoolService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoolService)))
  "Returns string type for a service object of type '<BoolService>"
  "nao_dcm_msgs/BoolService")