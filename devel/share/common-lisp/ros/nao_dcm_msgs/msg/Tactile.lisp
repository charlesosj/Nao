; Auto-generated. Do not edit!


(cl:in-package nao_dcm_msgs-msg)


;//! \htmlinclude Tactile.msg.html

(cl:defclass <Tactile> (roslisp-msg-protocol:ros-message)
  ((HeadTouchRear
    :reader HeadTouchRear
    :initarg :HeadTouchRear
    :type cl:fixnum
    :initform 0)
   (HeadTouchMiddle
    :reader HeadTouchMiddle
    :initarg :HeadTouchMiddle
    :type cl:fixnum
    :initform 0)
   (HeadTouchFront
    :reader HeadTouchFront
    :initarg :HeadTouchFront
    :type cl:fixnum
    :initform 0)
   (LeftTouchBack
    :reader LeftTouchBack
    :initarg :LeftTouchBack
    :type cl:fixnum
    :initform 0)
   (LeftTouchLeft
    :reader LeftTouchLeft
    :initarg :LeftTouchLeft
    :type cl:fixnum
    :initform 0)
   (LeftTouchRight
    :reader LeftTouchRight
    :initarg :LeftTouchRight
    :type cl:fixnum
    :initform 0)
   (RightTouchBack
    :reader RightTouchBack
    :initarg :RightTouchBack
    :type cl:fixnum
    :initform 0)
   (RightTouchLeft
    :reader RightTouchLeft
    :initarg :RightTouchLeft
    :type cl:fixnum
    :initform 0)
   (RightTouchRight
    :reader RightTouchRight
    :initarg :RightTouchRight
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Tactile (<Tactile>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tactile>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tactile)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_dcm_msgs-msg:<Tactile> is deprecated: use nao_dcm_msgs-msg:Tactile instead.")))

(cl:ensure-generic-function 'HeadTouchRear-val :lambda-list '(m))
(cl:defmethod HeadTouchRear-val ((m <Tactile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:HeadTouchRear-val is deprecated.  Use nao_dcm_msgs-msg:HeadTouchRear instead.")
  (HeadTouchRear m))

(cl:ensure-generic-function 'HeadTouchMiddle-val :lambda-list '(m))
(cl:defmethod HeadTouchMiddle-val ((m <Tactile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:HeadTouchMiddle-val is deprecated.  Use nao_dcm_msgs-msg:HeadTouchMiddle instead.")
  (HeadTouchMiddle m))

(cl:ensure-generic-function 'HeadTouchFront-val :lambda-list '(m))
(cl:defmethod HeadTouchFront-val ((m <Tactile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:HeadTouchFront-val is deprecated.  Use nao_dcm_msgs-msg:HeadTouchFront instead.")
  (HeadTouchFront m))

(cl:ensure-generic-function 'LeftTouchBack-val :lambda-list '(m))
(cl:defmethod LeftTouchBack-val ((m <Tactile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:LeftTouchBack-val is deprecated.  Use nao_dcm_msgs-msg:LeftTouchBack instead.")
  (LeftTouchBack m))

(cl:ensure-generic-function 'LeftTouchLeft-val :lambda-list '(m))
(cl:defmethod LeftTouchLeft-val ((m <Tactile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:LeftTouchLeft-val is deprecated.  Use nao_dcm_msgs-msg:LeftTouchLeft instead.")
  (LeftTouchLeft m))

(cl:ensure-generic-function 'LeftTouchRight-val :lambda-list '(m))
(cl:defmethod LeftTouchRight-val ((m <Tactile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:LeftTouchRight-val is deprecated.  Use nao_dcm_msgs-msg:LeftTouchRight instead.")
  (LeftTouchRight m))

(cl:ensure-generic-function 'RightTouchBack-val :lambda-list '(m))
(cl:defmethod RightTouchBack-val ((m <Tactile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:RightTouchBack-val is deprecated.  Use nao_dcm_msgs-msg:RightTouchBack instead.")
  (RightTouchBack m))

(cl:ensure-generic-function 'RightTouchLeft-val :lambda-list '(m))
(cl:defmethod RightTouchLeft-val ((m <Tactile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:RightTouchLeft-val is deprecated.  Use nao_dcm_msgs-msg:RightTouchLeft instead.")
  (RightTouchLeft m))

(cl:ensure-generic-function 'RightTouchRight-val :lambda-list '(m))
(cl:defmethod RightTouchRight-val ((m <Tactile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_dcm_msgs-msg:RightTouchRight-val is deprecated.  Use nao_dcm_msgs-msg:RightTouchRight instead.")
  (RightTouchRight m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Tactile>)))
    "Constants for message type '<Tactile>"
  '((:STATEUNPRESSED . 0)
    (:STATEPRESSED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Tactile)))
    "Constants for message type 'Tactile"
  '((:STATEUNPRESSED . 0)
    (:STATEPRESSED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tactile>) ostream)
  "Serializes a message object of type '<Tactile>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HeadTouchRear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HeadTouchMiddle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HeadTouchFront)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftTouchBack)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftTouchLeft)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftTouchRight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightTouchBack)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightTouchLeft)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightTouchRight)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tactile>) istream)
  "Deserializes a message object of type '<Tactile>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HeadTouchRear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HeadTouchMiddle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HeadTouchFront)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftTouchBack)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftTouchLeft)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftTouchRight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightTouchBack)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightTouchLeft)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightTouchRight)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tactile>)))
  "Returns string type for a message object of type '<Tactile>"
  "nao_dcm_msgs/Tactile")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tactile)))
  "Returns string type for a message object of type 'Tactile"
  "nao_dcm_msgs/Tactile")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tactile>)))
  "Returns md5sum for a message object of type '<Tactile>"
  "d8e6e983141612945d4fe93bd0192fe3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tactile)))
  "Returns md5sum for a message object of type 'Tactile"
  "d8e6e983141612945d4fe93bd0192fe3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tactile>)))
  "Returns full string definition for message of type '<Tactile>"
  (cl:format cl:nil "uint8 stateUnPressed=0~%uint8 statePressed=1~%~%uint8 HeadTouchRear~%uint8 HeadTouchMiddle~%uint8 HeadTouchFront~%~%uint8 LeftTouchBack~%uint8 LeftTouchLeft~%uint8 LeftTouchRight~%~%uint8 RightTouchBack~%uint8 RightTouchLeft~%uint8 RightTouchRight~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tactile)))
  "Returns full string definition for message of type 'Tactile"
  (cl:format cl:nil "uint8 stateUnPressed=0~%uint8 statePressed=1~%~%uint8 HeadTouchRear~%uint8 HeadTouchMiddle~%uint8 HeadTouchFront~%~%uint8 LeftTouchBack~%uint8 LeftTouchLeft~%uint8 LeftTouchRight~%~%uint8 RightTouchBack~%uint8 RightTouchLeft~%uint8 RightTouchRight~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tactile>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tactile>))
  "Converts a ROS message object to a list"
  (cl:list 'Tactile
    (cl:cons ':HeadTouchRear (HeadTouchRear msg))
    (cl:cons ':HeadTouchMiddle (HeadTouchMiddle msg))
    (cl:cons ':HeadTouchFront (HeadTouchFront msg))
    (cl:cons ':LeftTouchBack (LeftTouchBack msg))
    (cl:cons ':LeftTouchLeft (LeftTouchLeft msg))
    (cl:cons ':LeftTouchRight (LeftTouchRight msg))
    (cl:cons ':RightTouchBack (RightTouchBack msg))
    (cl:cons ':RightTouchLeft (RightTouchLeft msg))
    (cl:cons ':RightTouchRight (RightTouchRight msg))
))
