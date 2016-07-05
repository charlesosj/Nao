; Auto-generated. Do not edit!


(cl:in-package nao_interaction_msgs-srv)


;//! \htmlinclude AudioRecorder-request.msg.html

(cl:defclass <AudioRecorder-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (secs
    :reader secs
    :initarg :secs
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (audio_type
    :reader audio_type
    :initarg :audio_type
    :type std_msgs-msg:Char
    :initform (cl:make-instance 'std_msgs-msg:Char))
   (left_channel
    :reader left_channel
    :initarg :left_channel
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (right_channel
    :reader right_channel
    :initarg :right_channel
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (front_channel
    :reader front_channel
    :initarg :front_channel
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (rear_channel
    :reader rear_channel
    :initarg :rear_channel
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (samplerate
    :reader samplerate
    :initarg :samplerate
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass AudioRecorder-request (<AudioRecorder-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioRecorder-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioRecorder-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_interaction_msgs-srv:<AudioRecorder-request> is deprecated: use nao_interaction_msgs-srv:AudioRecorder-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <AudioRecorder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-srv:file_path-val is deprecated.  Use nao_interaction_msgs-srv:file_path instead.")
  (file_path m))

(cl:ensure-generic-function 'secs-val :lambda-list '(m))
(cl:defmethod secs-val ((m <AudioRecorder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-srv:secs-val is deprecated.  Use nao_interaction_msgs-srv:secs instead.")
  (secs m))

(cl:ensure-generic-function 'audio_type-val :lambda-list '(m))
(cl:defmethod audio_type-val ((m <AudioRecorder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-srv:audio_type-val is deprecated.  Use nao_interaction_msgs-srv:audio_type instead.")
  (audio_type m))

(cl:ensure-generic-function 'left_channel-val :lambda-list '(m))
(cl:defmethod left_channel-val ((m <AudioRecorder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-srv:left_channel-val is deprecated.  Use nao_interaction_msgs-srv:left_channel instead.")
  (left_channel m))

(cl:ensure-generic-function 'right_channel-val :lambda-list '(m))
(cl:defmethod right_channel-val ((m <AudioRecorder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-srv:right_channel-val is deprecated.  Use nao_interaction_msgs-srv:right_channel instead.")
  (right_channel m))

(cl:ensure-generic-function 'front_channel-val :lambda-list '(m))
(cl:defmethod front_channel-val ((m <AudioRecorder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-srv:front_channel-val is deprecated.  Use nao_interaction_msgs-srv:front_channel instead.")
  (front_channel m))

(cl:ensure-generic-function 'rear_channel-val :lambda-list '(m))
(cl:defmethod rear_channel-val ((m <AudioRecorder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-srv:rear_channel-val is deprecated.  Use nao_interaction_msgs-srv:rear_channel instead.")
  (rear_channel m))

(cl:ensure-generic-function 'samplerate-val :lambda-list '(m))
(cl:defmethod samplerate-val ((m <AudioRecorder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-srv:samplerate-val is deprecated.  Use nao_interaction_msgs-srv:samplerate instead.")
  (samplerate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioRecorder-request>) ostream)
  "Serializes a message object of type '<AudioRecorder-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'file_path) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'secs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'audio_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_channel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_channel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'front_channel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rear_channel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'samplerate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioRecorder-request>) istream)
  "Deserializes a message object of type '<AudioRecorder-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'file_path) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'secs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'audio_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_channel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_channel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'front_channel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rear_channel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'samplerate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioRecorder-request>)))
  "Returns string type for a service object of type '<AudioRecorder-request>"
  "nao_interaction_msgs/AudioRecorderRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioRecorder-request)))
  "Returns string type for a service object of type 'AudioRecorder-request"
  "nao_interaction_msgs/AudioRecorderRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioRecorder-request>)))
  "Returns md5sum for a message object of type '<AudioRecorder-request>"
  "b211df69b24b5ed7b95654b151a08b5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioRecorder-request)))
  "Returns md5sum for a message object of type 'AudioRecorder-request"
  "b211df69b24b5ed7b95654b151a08b5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioRecorder-request>)))
  "Returns full string definition for message of type '<AudioRecorder-request>"
  (cl:format cl:nil "~%~%~%~%std_msgs/String file_path~%std_msgs/Int32 secs~%~%~%std_msgs/Char audio_type~%~%std_msgs/Bool left_channel~%std_msgs/Bool right_channel~%std_msgs/Bool front_channel~%std_msgs/Bool rear_channel~%~%~%std_msgs/Int32 samplerate~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Char~%char data~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioRecorder-request)))
  "Returns full string definition for message of type 'AudioRecorder-request"
  (cl:format cl:nil "~%~%~%~%std_msgs/String file_path~%std_msgs/Int32 secs~%~%~%std_msgs/Char audio_type~%~%std_msgs/Bool left_channel~%std_msgs/Bool right_channel~%std_msgs/Bool front_channel~%std_msgs/Bool rear_channel~%~%~%std_msgs/Int32 samplerate~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Char~%char data~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioRecorder-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'file_path))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'secs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'audio_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_channel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_channel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'front_channel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rear_channel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'samplerate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioRecorder-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioRecorder-request
    (cl:cons ':file_path (file_path msg))
    (cl:cons ':secs (secs msg))
    (cl:cons ':audio_type (audio_type msg))
    (cl:cons ':left_channel (left_channel msg))
    (cl:cons ':right_channel (right_channel msg))
    (cl:cons ':front_channel (front_channel msg))
    (cl:cons ':rear_channel (rear_channel msg))
    (cl:cons ':samplerate (samplerate msg))
))
;//! \htmlinclude AudioRecorder-response.msg.html

(cl:defclass <AudioRecorder-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AudioRecorder-response (<AudioRecorder-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioRecorder-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioRecorder-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_interaction_msgs-srv:<AudioRecorder-response> is deprecated: use nao_interaction_msgs-srv:AudioRecorder-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioRecorder-response>) ostream)
  "Serializes a message object of type '<AudioRecorder-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioRecorder-response>) istream)
  "Deserializes a message object of type '<AudioRecorder-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioRecorder-response>)))
  "Returns string type for a service object of type '<AudioRecorder-response>"
  "nao_interaction_msgs/AudioRecorderResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioRecorder-response)))
  "Returns string type for a service object of type 'AudioRecorder-response"
  "nao_interaction_msgs/AudioRecorderResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioRecorder-response>)))
  "Returns md5sum for a message object of type '<AudioRecorder-response>"
  "b211df69b24b5ed7b95654b151a08b5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioRecorder-response)))
  "Returns md5sum for a message object of type 'AudioRecorder-response"
  "b211df69b24b5ed7b95654b151a08b5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioRecorder-response>)))
  "Returns full string definition for message of type '<AudioRecorder-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioRecorder-response)))
  "Returns full string definition for message of type 'AudioRecorder-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioRecorder-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioRecorder-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioRecorder-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AudioRecorder)))
  'AudioRecorder-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AudioRecorder)))
  'AudioRecorder-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioRecorder)))
  "Returns string type for a service object of type '<AudioRecorder>"
  "nao_interaction_msgs/AudioRecorder")