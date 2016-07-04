; Auto-generated. Do not edit!


(cl:in-package nao_dcm_msgs-msg)


;//! \htmlinclude Bumper.msg.html

(cl:defclass <Bumper> (roslisp-msg-protocol:ros-message)
  ((LeftFootLeft
    :reader LeftFootLeft
    :initarg :LeftFootLeft
    :type cl:fixnum
    :initform 0)
   (LeftFootRight
    :reader LeftFootRight
    :initarg :LeftFootRight
    :type cl:fixnum
    :initform 0)
   (RightFootLeft
    :reader RightFootLeft
    :initarg :RightFootLeft
    :type cl:fixnum
    :initform 0)
   (RightFootRight
    :reader RightFootRight
    :initarg :RightFootRight
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Bumper (<Bumper>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bumper>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bumper)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_dcm_msgs-msg:<Bumper> is deprecated: use nao_dcm_msgs-msg:Bumper instead.")))

(cl:ensure-generic-function 'LeftFootLeft-val :lambda-list '(m))
(cl:defmethod LeftFootLeft-val ((m <Bumper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:LeftFootLeft-val is deprecated.  Use nao_dcm_msgs-msg:LeftFootLeft instead.")
  (LeftFootLeft m))

(cl:ensure-generic-function 'LeftFootRight-val :lambda-list '(m))
(cl:defmethod LeftFootRight-val ((m <Bumper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:LeftFootRight-val is deprecated.  Use nao_dcm_msgs-msg:LeftFootRight instead.")
  (LeftFootRight m))

(cl:ensure-generic-function 'RightFootLeft-val :lambda-list '(m))
(cl:defmethod RightFootLeft-val ((m <Bumper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:RightFootLeft-val is deprecated.  Use nao_dcm_msgs-msg:RightFootLeft instead.")
  (RightFootLeft m))

(cl:ensure-generic-function 'RightFootRight-val :lambda-list '(m))
(cl:defmethod RightFootRight-val ((m <Bumper>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:RightFootRight-val is deprecated.  Use nao_dcm_msgs-msg:RightFootRight instead.")
  (RightFootRight m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Bumper>)))
    "Constants for message type '<Bumper>"
  '((:STATEUNPRESSED . 0)
    (:STATEPRESSED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Bumper)))
    "Constants for message type 'Bumper"
  '((:STATEUNPRESSED . 0)
    (:STATEPRESSED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bumper>) ostream)
  "Serializes a message object of type '<Bumper>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftFootLeft)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftFootRight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightFootLeft)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightFootRight)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bumper>) istream)
  "Deserializes a message object of type '<Bumper>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftFootLeft)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftFootRight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightFootLeft)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightFootRight)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bumper>)))
  "Returns string type for a message object of type '<Bumper>"
  "nao_dcm_msgs/Bumper")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bumper)))
  "Returns string type for a message object of type 'Bumper"
  "nao_dcm_msgs/Bumper")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bumper>)))
  "Returns md5sum for a message object of type '<Bumper>"
  "8f3cee4c6e38d05c85e9a5767766a117")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bumper)))
  "Returns md5sum for a message object of type 'Bumper"
  "8f3cee4c6e38d05c85e9a5767766a117")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bumper>)))
  "Returns full string definition for message of type '<Bumper>"
  (cl:format cl:nil "uint8 stateUnPressed=0~%uint8 statePressed=1~%~%uint8 LeftFootLeft~%uint8 LeftFootRight~%~%uint8 RightFootLeft~%uint8 RightFootRight~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bumper)))
  "Returns full string definition for message of type 'Bumper"
  (cl:format cl:nil "uint8 stateUnPressed=0~%uint8 statePressed=1~%~%uint8 LeftFootLeft~%uint8 LeftFootRight~%~%uint8 RightFootLeft~%uint8 RightFootRight~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bumper>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bumper>))
  "Converts a ROS message object to a list"
  (cl:list 'Bumper
    (cl:cons ':LeftFootLeft (LeftFootLeft msg))
    (cl:cons ':LeftFootRight (LeftFootRight msg))
    (cl:cons ':RightFootLeft (RightFootLeft msg))
    (cl:cons ':RightFootRight (RightFootRight msg))
))
