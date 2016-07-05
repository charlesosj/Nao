; Auto-generated. Do not edit!


(cl:in-package nao_interaction_msgs-srv)


;//! \htmlinclude LearnFace-request.msg.html

(cl:defclass <LearnFace-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass LearnFace-request (<LearnFace-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LearnFace-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LearnFace-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_interaction_msgs-srv:<LearnFace-request> is deprecated: use nao_interaction_msgs-srv:LearnFace-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <LearnFace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-srv:name-val is deprecated.  Use nao_interaction_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LearnFace-request>) ostream)
  "Serializes a message object of type '<LearnFace-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'name) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LearnFace-request>) istream)
  "Deserializes a message object of type '<LearnFace-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'name) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LearnFace-request>)))
  "Returns string type for a service object of type '<LearnFace-request>"
  "nao_interaction_msgs/LearnFaceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LearnFace-request)))
  "Returns string type for a service object of type 'LearnFace-request"
  "nao_interaction_msgs/LearnFaceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LearnFace-request>)))
  "Returns md5sum for a message object of type '<LearnFace-request>"
  "cff8f1ff74895b778f6f5c0b02297a61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LearnFace-request)))
  "Returns md5sum for a message object of type 'LearnFace-request"
  "cff8f1ff74895b778f6f5c0b02297a61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LearnFace-request>)))
  "Returns full string definition for message of type '<LearnFace-request>"
  (cl:format cl:nil "std_msgs/String name~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LearnFace-request)))
  "Returns full string definition for message of type 'LearnFace-request"
  (cl:format cl:nil "std_msgs/String name~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LearnFace-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LearnFace-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LearnFace-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude LearnFace-response.msg.html

(cl:defclass <LearnFace-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass LearnFace-response (<LearnFace-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LearnFace-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LearnFace-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_interaction_msgs-srv:<LearnFace-response> is deprecated: use nao_interaction_msgs-srv:LearnFace-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <LearnFace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-srv:result-val is deprecated.  Use nao_interaction_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LearnFace-response>) ostream)
  "Serializes a message object of type '<LearnFace-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LearnFace-response>) istream)
  "Deserializes a message object of type '<LearnFace-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LearnFace-response>)))
  "Returns string type for a service object of type '<LearnFace-response>"
  "nao_interaction_msgs/LearnFaceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LearnFace-response)))
  "Returns string type for a service object of type 'LearnFace-response"
  "nao_interaction_msgs/LearnFaceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LearnFace-response>)))
  "Returns md5sum for a message object of type '<LearnFace-response>"
  "cff8f1ff74895b778f6f5c0b02297a61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LearnFace-response)))
  "Returns md5sum for a message object of type 'LearnFace-response"
  "cff8f1ff74895b778f6f5c0b02297a61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LearnFace-response>)))
  "Returns full string definition for message of type '<LearnFace-response>"
  (cl:format cl:nil "std_msgs/Bool result~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LearnFace-response)))
  "Returns full string definition for message of type 'LearnFace-response"
  (cl:format cl:nil "std_msgs/Bool result~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LearnFace-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LearnFace-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LearnFace-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LearnFace)))
  'LearnFace-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LearnFace)))
  'LearnFace-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LearnFace)))
  "Returns string type for a service object of type '<LearnFace>"
  "nao_interaction_msgs/LearnFace")