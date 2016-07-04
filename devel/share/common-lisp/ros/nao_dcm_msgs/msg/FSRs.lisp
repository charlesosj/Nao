; Auto-generated. Do not edit!


(cl:in-package nao_dcm_msgs-msg)


;//! \htmlinclude FSRs.msg.html

(cl:defclass <FSRs> (roslisp-msg-protocol:ros-message)
  ((LeftFrontLeft
    :reader LeftFrontLeft
    :initarg :LeftFrontLeft
    :type cl:float
    :initform 0.0)
   (LeftFrontRight
    :reader LeftFrontRight
    :initarg :LeftFrontRight
    :type cl:float
    :initform 0.0)
   (LeftRearLeft
    :reader LeftRearLeft
    :initarg :LeftRearLeft
    :type cl:float
    :initform 0.0)
   (LeftRearRight
    :reader LeftRearRight
    :initarg :LeftRearRight
    :type cl:float
    :initform 0.0)
   (LeftTotalWeight
    :reader LeftTotalWeight
    :initarg :LeftTotalWeight
    :type cl:float
    :initform 0.0)
   (LeftCOPx
    :reader LeftCOPx
    :initarg :LeftCOPx
    :type cl:float
    :initform 0.0)
   (LeftCOPy
    :reader LeftCOPy
    :initarg :LeftCOPy
    :type cl:float
    :initform 0.0)
   (RightFrontLeft
    :reader RightFrontLeft
    :initarg :RightFrontLeft
    :type cl:float
    :initform 0.0)
   (RightFrontRight
    :reader RightFrontRight
    :initarg :RightFrontRight
    :type cl:float
    :initform 0.0)
   (RightRearLeft
    :reader RightRearLeft
    :initarg :RightRearLeft
    :type cl:float
    :initform 0.0)
   (RightRearRight
    :reader RightRearRight
    :initarg :RightRearRight
    :type cl:float
    :initform 0.0)
   (RightTotalWeight
    :reader RightTotalWeight
    :initarg :RightTotalWeight
    :type cl:float
    :initform 0.0)
   (RightCOPx
    :reader RightCOPx
    :initarg :RightCOPx
    :type cl:float
    :initform 0.0)
   (RightCOPy
    :reader RightCOPy
    :initarg :RightCOPy
    :type cl:float
    :initform 0.0))
)

(cl:defclass FSRs (<FSRs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FSRs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FSRs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_dcm_msgs-msg:<FSRs> is deprecated: use nao_dcm_msgs-msg:FSRs instead.")))

(cl:ensure-generic-function 'LeftFrontLeft-val :lambda-list '(m))
(cl:defmethod LeftFrontLeft-val ((m <FSRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:LeftFrontLeft-val is deprecated.  Use nao_dcm_msgs-msg:LeftFrontLeft instead.")
  (LeftFrontLeft m))

(cl:ensure-generic-function 'LeftFrontRight-val :lambda-list '(m))
(cl:defmethod LeftFrontRight-val ((m <FSRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:LeftFrontRight-val is deprecated.  Use nao_dcm_msgs-msg:LeftFrontRight instead.")
  (LeftFrontRight m))

(cl:ensure-generic-function 'LeftRearLeft-val :lambda-list '(m))
(cl:defmethod LeftRearLeft-val ((m <FSRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:LeftRearLeft-val is deprecated.  Use nao_dcm_msgs-msg:LeftRearLeft instead.")
  (LeftRearLeft m))

(cl:ensure-generic-function 'LeftRearRight-val :lambda-list '(m))
(cl:defmethod LeftRearRight-val ((m <FSRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:LeftRearRight-val is deprecated.  Use nao_dcm_msgs-msg:LeftRearRight instead.")
  (LeftRearRight m))

(cl:ensure-generic-function 'LeftTotalWeight-val :lambda-list '(m))
(cl:defmethod LeftTotalWeight-val ((m <FSRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:LeftTotalWeight-val is deprecated.  Use nao_dcm_msgs-msg:LeftTotalWeight instead.")
  (LeftTotalWeight m))

(cl:ensure-generic-function 'LeftCOPx-val :lambda-list '(m))
(cl:defmethod LeftCOPx-val ((m <FSRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:LeftCOPx-val is deprecated.  Use nao_dcm_msgs-msg:LeftCOPx instead.")
  (LeftCOPx m))

(cl:ensure-generic-function 'LeftCOPy-val :lambda-list '(m))
(cl:defmethod LeftCOPy-val ((m <FSRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:LeftCOPy-val is deprecated.  Use nao_dcm_msgs-msg:LeftCOPy instead.")
  (LeftCOPy m))

(cl:ensure-generic-function 'RightFrontLeft-val :lambda-list '(m))
(cl:defmethod RightFrontLeft-val ((m <FSRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:RightFrontLeft-val is deprecated.  Use nao_dcm_msgs-msg:RightFrontLeft instead.")
  (RightFrontLeft m))

(cl:ensure-generic-function 'RightFrontRight-val :lambda-list '(m))
(cl:defmethod RightFrontRight-val ((m <FSRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:RightFrontRight-val is deprecated.  Use nao_dcm_msgs-msg:RightFrontRight instead.")
  (RightFrontRight m))

(cl:ensure-generic-function 'RightRearLeft-val :lambda-list '(m))
(cl:defmethod RightRearLeft-val ((m <FSRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:RightRearLeft-val is deprecated.  Use nao_dcm_msgs-msg:RightRearLeft instead.")
  (RightRearLeft m))

(cl:ensure-generic-function 'RightRearRight-val :lambda-list '(m))
(cl:defmethod RightRearRight-val ((m <FSRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:RightRearRight-val is deprecated.  Use nao_dcm_msgs-msg:RightRearRight instead.")
  (RightRearRight m))

(cl:ensure-generic-function 'RightTotalWeight-val :lambda-list '(m))
(cl:defmethod RightTotalWeight-val ((m <FSRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:RightTotalWeight-val is deprecated.  Use nao_dcm_msgs-msg:RightTotalWeight instead.")
  (RightTotalWeight m))

(cl:ensure-generic-function 'RightCOPx-val :lambda-list '(m))
(cl:defmethod RightCOPx-val ((m <FSRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:RightCOPx-val is deprecated.  Use nao_dcm_msgs-msg:RightCOPx instead.")
  (RightCOPx m))

(cl:ensure-generic-function 'RightCOPy-val :lambda-list '(m))
(cl:defmethod RightCOPy-val ((m <FSRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:RightCOPy-val is deprecated.  Use nao_dcm_msgs-msg:RightCOPy instead.")
  (RightCOPy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FSRs>) ostream)
  "Serializes a message object of type '<FSRs>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftFrontLeft))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftFrontRight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftRearLeft))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftRearRight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftTotalWeight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftCOPx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'LeftCOPy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightFrontLeft))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightFrontRight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightRearLeft))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightRearRight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightTotalWeight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightCOPx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RightCOPy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FSRs>) istream)
  "Deserializes a message object of type '<FSRs>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftFrontLeft) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftFrontRight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftRearLeft) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftRearRight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftTotalWeight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftCOPx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LeftCOPy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightFrontLeft) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightFrontRight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightRearLeft) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightRearRight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightTotalWeight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightCOPx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RightCOPy) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FSRs>)))
  "Returns string type for a message object of type '<FSRs>"
  "nao_dcm_msgs/FSRs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FSRs)))
  "Returns string type for a message object of type 'FSRs"
  "nao_dcm_msgs/FSRs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FSRs>)))
  "Returns md5sum for a message object of type '<FSRs>"
  "5e046ced61ee0ee10ac4f89b70710d18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FSRs)))
  "Returns md5sum for a message object of type 'FSRs"
  "5e046ced61ee0ee10ac4f89b70710d18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FSRs>)))
  "Returns full string definition for message of type '<FSRs>"
  (cl:format cl:nil "float32 LeftFrontLeft~%float32 LeftFrontRight~%float32 LeftRearLeft~%float32 LeftRearRight~%float32 LeftTotalWeight~%~%float32 LeftCOPx~%float32 LeftCOPy~%~%float32 RightFrontLeft~%float32 RightFrontRight~%float32 RightRearLeft~%float32 RightRearRight~%float32 RightTotalWeight~%~%float32 RightCOPx~%float32 RightCOPy~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FSRs)))
  "Returns full string definition for message of type 'FSRs"
  (cl:format cl:nil "float32 LeftFrontLeft~%float32 LeftFrontRight~%float32 LeftRearLeft~%float32 LeftRearRight~%float32 LeftTotalWeight~%~%float32 LeftCOPx~%float32 LeftCOPy~%~%float32 RightFrontLeft~%float32 RightFrontRight~%float32 RightRearLeft~%float32 RightRearRight~%float32 RightTotalWeight~%~%float32 RightCOPx~%float32 RightCOPy~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FSRs>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FSRs>))
  "Converts a ROS message object to a list"
  (cl:list 'FSRs
    (cl:cons ':LeftFrontLeft (LeftFrontLeft msg))
    (cl:cons ':LeftFrontRight (LeftFrontRight msg))
    (cl:cons ':LeftRearLeft (LeftRearLeft msg))
    (cl:cons ':LeftRearRight (LeftRearRight msg))
    (cl:cons ':LeftTotalWeight (LeftTotalWeight msg))
    (cl:cons ':LeftCOPx (LeftCOPx msg))
    (cl:cons ':LeftCOPy (LeftCOPy msg))
    (cl:cons ':RightFrontLeft (RightFrontLeft msg))
    (cl:cons ':RightFrontRight (RightFrontRight msg))
    (cl:cons ':RightRearLeft (RightRearLeft msg))
    (cl:cons ':RightRearRight (RightRearRight msg))
    (cl:cons ':RightTotalWeight (RightTotalWeight msg))
    (cl:cons ':RightCOPx (RightCOPx msg))
    (cl:cons ':RightCOPy (RightCOPy msg))
))
