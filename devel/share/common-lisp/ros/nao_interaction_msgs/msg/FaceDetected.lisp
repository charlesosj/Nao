; Auto-generated. Do not edit!


(cl:in-package nao_interaction_msgs-msg)


;//! \htmlinclude FaceDetected.msg.html

(cl:defclass <FaceDetected> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (face_id
    :reader face_id
    :initarg :face_id
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (score_reco
    :reader score_reco
    :initarg :score_reco
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (face_label
    :reader face_label
    :initarg :face_label
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (shape_alpha
    :reader shape_alpha
    :initarg :shape_alpha
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (shape_beta
    :reader shape_beta
    :initarg :shape_beta
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (shape_sizeX
    :reader shape_sizeX
    :initarg :shape_sizeX
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (shape_sizeY
    :reader shape_sizeY
    :initarg :shape_sizeY
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eye_eyeCenter_x
    :reader right_eye_eyeCenter_x
    :initarg :right_eye_eyeCenter_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eye_eyeCenter_y
    :reader right_eye_eyeCenter_y
    :initarg :right_eye_eyeCenter_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eye_noseSideLimit_x
    :reader right_eye_noseSideLimit_x
    :initarg :right_eye_noseSideLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eye_noseSideLimit_y
    :reader right_eye_noseSideLimit_y
    :initarg :right_eye_noseSideLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eye_earSideLimit_x
    :reader right_eye_earSideLimit_x
    :initarg :right_eye_earSideLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eye_earSideLimit_y
    :reader right_eye_earSideLimit_y
    :initarg :right_eye_earSideLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eye_topLimit_x
    :reader right_eye_topLimit_x
    :initarg :right_eye_topLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eye_topLimit_y
    :reader right_eye_topLimit_y
    :initarg :right_eye_topLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eye_bottomLimit_x
    :reader right_eye_bottomLimit_x
    :initarg :right_eye_bottomLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eye_bottomLimit_y
    :reader right_eye_bottomLimit_y
    :initarg :right_eye_bottomLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eye_midTopEarLimit_x
    :reader right_eye_midTopEarLimit_x
    :initarg :right_eye_midTopEarLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eye_midTopEarLimit_y
    :reader right_eye_midTopEarLimit_y
    :initarg :right_eye_midTopEarLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eye_midTopNoseLimit_x
    :reader right_eye_midTopNoseLimit_x
    :initarg :right_eye_midTopNoseLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eye_midTopNoseLimit_y
    :reader right_eye_midTopNoseLimit_y
    :initarg :right_eye_midTopNoseLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eye_eyeCenter_x
    :reader left_eye_eyeCenter_x
    :initarg :left_eye_eyeCenter_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eye_eyeCenter_y
    :reader left_eye_eyeCenter_y
    :initarg :left_eye_eyeCenter_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eye_noseSideLimit_x
    :reader left_eye_noseSideLimit_x
    :initarg :left_eye_noseSideLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eye_noseSideLimit_y
    :reader left_eye_noseSideLimit_y
    :initarg :left_eye_noseSideLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eye_earSideLimit_x
    :reader left_eye_earSideLimit_x
    :initarg :left_eye_earSideLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eye_earSideLimit_y
    :reader left_eye_earSideLimit_y
    :initarg :left_eye_earSideLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eye_topLimit_x
    :reader left_eye_topLimit_x
    :initarg :left_eye_topLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eye_topLimit_y
    :reader left_eye_topLimit_y
    :initarg :left_eye_topLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eye_bottomLimit_x
    :reader left_eye_bottomLimit_x
    :initarg :left_eye_bottomLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eye_bottomLimit_y
    :reader left_eye_bottomLimit_y
    :initarg :left_eye_bottomLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eye_midTopEarLimit_x
    :reader left_eye_midTopEarLimit_x
    :initarg :left_eye_midTopEarLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eye_midTopEarLimit_y
    :reader left_eye_midTopEarLimit_y
    :initarg :left_eye_midTopEarLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eye_midTopNoseLimit_x
    :reader left_eye_midTopNoseLimit_x
    :initarg :left_eye_midTopNoseLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eye_midTopNoseLimit_y
    :reader left_eye_midTopNoseLimit_y
    :initarg :left_eye_midTopNoseLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eyebrow_noseSideLimit_x
    :reader right_eyebrow_noseSideLimit_x
    :initarg :right_eyebrow_noseSideLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eyebrow_noseSideLimit_y
    :reader right_eyebrow_noseSideLimit_y
    :initarg :right_eyebrow_noseSideLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eyebrow_center_x
    :reader right_eyebrow_center_x
    :initarg :right_eyebrow_center_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eyebrow_center_y
    :reader right_eyebrow_center_y
    :initarg :right_eyebrow_center_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eyebrow_earSideLimit_x
    :reader right_eyebrow_earSideLimit_x
    :initarg :right_eyebrow_earSideLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (right_eyebrow_earSideLimit_y
    :reader right_eyebrow_earSideLimit_y
    :initarg :right_eyebrow_earSideLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eyebrow_noseSideLimit_x
    :reader left_eyebrow_noseSideLimit_x
    :initarg :left_eyebrow_noseSideLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eyebrow_noseSideLimit_y
    :reader left_eyebrow_noseSideLimit_y
    :initarg :left_eyebrow_noseSideLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eyebrow_center_x
    :reader left_eyebrow_center_x
    :initarg :left_eyebrow_center_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eyebrow_center_y
    :reader left_eyebrow_center_y
    :initarg :left_eyebrow_center_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eyebrow_earSideLimit_x
    :reader left_eyebrow_earSideLimit_x
    :initarg :left_eyebrow_earSideLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (left_eyebrow_earSideLimit_y
    :reader left_eyebrow_earSideLimit_y
    :initarg :left_eyebrow_earSideLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (nose_bottomCenterLimit_x
    :reader nose_bottomCenterLimit_x
    :initarg :nose_bottomCenterLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (nose_bottomCenterLimit_y
    :reader nose_bottomCenterLimit_y
    :initarg :nose_bottomCenterLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (nose_bottomLeftLimit_x
    :reader nose_bottomLeftLimit_x
    :initarg :nose_bottomLeftLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (nose_bottomLeftLimit_y
    :reader nose_bottomLeftLimit_y
    :initarg :nose_bottomLeftLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (nose_bottomRightLimit_x
    :reader nose_bottomRightLimit_x
    :initarg :nose_bottomRightLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (nose_bottomRightLimit_y
    :reader nose_bottomRightLimit_y
    :initarg :nose_bottomRightLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_leftLimit_x
    :reader mouth_leftLimit_x
    :initarg :mouth_leftLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_leftLimit_y
    :reader mouth_leftLimit_y
    :initarg :mouth_leftLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_rightLimit_x
    :reader mouth_rightLimit_x
    :initarg :mouth_rightLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_rightLimit_y
    :reader mouth_rightLimit_y
    :initarg :mouth_rightLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_topLimit_x
    :reader mouth_topLimit_x
    :initarg :mouth_topLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_topLimit_y
    :reader mouth_topLimit_y
    :initarg :mouth_topLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_bottomLimit_x
    :reader mouth_bottomLimit_x
    :initarg :mouth_bottomLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_bottomLimit_y
    :reader mouth_bottomLimit_y
    :initarg :mouth_bottomLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_midTopLeftLimit_x
    :reader mouth_midTopLeftLimit_x
    :initarg :mouth_midTopLeftLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_midTopLeftLimit_y
    :reader mouth_midTopLeftLimit_y
    :initarg :mouth_midTopLeftLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_midTopRightLimit_x
    :reader mouth_midTopRightLimit_x
    :initarg :mouth_midTopRightLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_midTopRightLimit_y
    :reader mouth_midTopRightLimit_y
    :initarg :mouth_midTopRightLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_midBottomRightLimit_x
    :reader mouth_midBottomRightLimit_x
    :initarg :mouth_midBottomRightLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_midBottomRightLimit_y
    :reader mouth_midBottomRightLimit_y
    :initarg :mouth_midBottomRightLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_midBottomLeftLimit_x
    :reader mouth_midBottomLeftLimit_x
    :initarg :mouth_midBottomLeftLimit_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mouth_midBottomLeftLimit_y
    :reader mouth_midBottomLeftLimit_y
    :initarg :mouth_midBottomLeftLimit_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (camera_0_pose
    :reader camera_0_pose
    :initarg :camera_0_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (camera_1_pose
    :reader camera_1_pose
    :initarg :camera_1_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (camera_id
    :reader camera_id
    :initarg :camera_id
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass FaceDetected (<FaceDetected>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceDetected>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceDetected)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_interaction_msgs-msg:<FaceDetected> is deprecated: use nao_interaction_msgs-msg:FaceDetected instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:header-val is deprecated.  Use nao_interaction_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'face_id-val :lambda-list '(m))
(cl:defmethod face_id-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:face_id-val is deprecated.  Use nao_interaction_msgs-msg:face_id instead.")
  (face_id m))

(cl:ensure-generic-function 'score_reco-val :lambda-list '(m))
(cl:defmethod score_reco-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:score_reco-val is deprecated.  Use nao_interaction_msgs-msg:score_reco instead.")
  (score_reco m))

(cl:ensure-generic-function 'face_label-val :lambda-list '(m))
(cl:defmethod face_label-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:face_label-val is deprecated.  Use nao_interaction_msgs-msg:face_label instead.")
  (face_label m))

(cl:ensure-generic-function 'shape_alpha-val :lambda-list '(m))
(cl:defmethod shape_alpha-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:shape_alpha-val is deprecated.  Use nao_interaction_msgs-msg:shape_alpha instead.")
  (shape_alpha m))

(cl:ensure-generic-function 'shape_beta-val :lambda-list '(m))
(cl:defmethod shape_beta-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:shape_beta-val is deprecated.  Use nao_interaction_msgs-msg:shape_beta instead.")
  (shape_beta m))

(cl:ensure-generic-function 'shape_sizeX-val :lambda-list '(m))
(cl:defmethod shape_sizeX-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:shape_sizeX-val is deprecated.  Use nao_interaction_msgs-msg:shape_sizeX instead.")
  (shape_sizeX m))

(cl:ensure-generic-function 'shape_sizeY-val :lambda-list '(m))
(cl:defmethod shape_sizeY-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:shape_sizeY-val is deprecated.  Use nao_interaction_msgs-msg:shape_sizeY instead.")
  (shape_sizeY m))

(cl:ensure-generic-function 'right_eye_eyeCenter_x-val :lambda-list '(m))
(cl:defmethod right_eye_eyeCenter_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eye_eyeCenter_x-val is deprecated.  Use nao_interaction_msgs-msg:right_eye_eyeCenter_x instead.")
  (right_eye_eyeCenter_x m))

(cl:ensure-generic-function 'right_eye_eyeCenter_y-val :lambda-list '(m))
(cl:defmethod right_eye_eyeCenter_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eye_eyeCenter_y-val is deprecated.  Use nao_interaction_msgs-msg:right_eye_eyeCenter_y instead.")
  (right_eye_eyeCenter_y m))

(cl:ensure-generic-function 'right_eye_noseSideLimit_x-val :lambda-list '(m))
(cl:defmethod right_eye_noseSideLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eye_noseSideLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:right_eye_noseSideLimit_x instead.")
  (right_eye_noseSideLimit_x m))

(cl:ensure-generic-function 'right_eye_noseSideLimit_y-val :lambda-list '(m))
(cl:defmethod right_eye_noseSideLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eye_noseSideLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:right_eye_noseSideLimit_y instead.")
  (right_eye_noseSideLimit_y m))

(cl:ensure-generic-function 'right_eye_earSideLimit_x-val :lambda-list '(m))
(cl:defmethod right_eye_earSideLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eye_earSideLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:right_eye_earSideLimit_x instead.")
  (right_eye_earSideLimit_x m))

(cl:ensure-generic-function 'right_eye_earSideLimit_y-val :lambda-list '(m))
(cl:defmethod right_eye_earSideLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eye_earSideLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:right_eye_earSideLimit_y instead.")
  (right_eye_earSideLimit_y m))

(cl:ensure-generic-function 'right_eye_topLimit_x-val :lambda-list '(m))
(cl:defmethod right_eye_topLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eye_topLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:right_eye_topLimit_x instead.")
  (right_eye_topLimit_x m))

(cl:ensure-generic-function 'right_eye_topLimit_y-val :lambda-list '(m))
(cl:defmethod right_eye_topLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eye_topLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:right_eye_topLimit_y instead.")
  (right_eye_topLimit_y m))

(cl:ensure-generic-function 'right_eye_bottomLimit_x-val :lambda-list '(m))
(cl:defmethod right_eye_bottomLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eye_bottomLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:right_eye_bottomLimit_x instead.")
  (right_eye_bottomLimit_x m))

(cl:ensure-generic-function 'right_eye_bottomLimit_y-val :lambda-list '(m))
(cl:defmethod right_eye_bottomLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eye_bottomLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:right_eye_bottomLimit_y instead.")
  (right_eye_bottomLimit_y m))

(cl:ensure-generic-function 'right_eye_midTopEarLimit_x-val :lambda-list '(m))
(cl:defmethod right_eye_midTopEarLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eye_midTopEarLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:right_eye_midTopEarLimit_x instead.")
  (right_eye_midTopEarLimit_x m))

(cl:ensure-generic-function 'right_eye_midTopEarLimit_y-val :lambda-list '(m))
(cl:defmethod right_eye_midTopEarLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eye_midTopEarLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:right_eye_midTopEarLimit_y instead.")
  (right_eye_midTopEarLimit_y m))

(cl:ensure-generic-function 'right_eye_midTopNoseLimit_x-val :lambda-list '(m))
(cl:defmethod right_eye_midTopNoseLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eye_midTopNoseLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:right_eye_midTopNoseLimit_x instead.")
  (right_eye_midTopNoseLimit_x m))

(cl:ensure-generic-function 'right_eye_midTopNoseLimit_y-val :lambda-list '(m))
(cl:defmethod right_eye_midTopNoseLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eye_midTopNoseLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:right_eye_midTopNoseLimit_y instead.")
  (right_eye_midTopNoseLimit_y m))

(cl:ensure-generic-function 'left_eye_eyeCenter_x-val :lambda-list '(m))
(cl:defmethod left_eye_eyeCenter_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eye_eyeCenter_x-val is deprecated.  Use nao_interaction_msgs-msg:left_eye_eyeCenter_x instead.")
  (left_eye_eyeCenter_x m))

(cl:ensure-generic-function 'left_eye_eyeCenter_y-val :lambda-list '(m))
(cl:defmethod left_eye_eyeCenter_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eye_eyeCenter_y-val is deprecated.  Use nao_interaction_msgs-msg:left_eye_eyeCenter_y instead.")
  (left_eye_eyeCenter_y m))

(cl:ensure-generic-function 'left_eye_noseSideLimit_x-val :lambda-list '(m))
(cl:defmethod left_eye_noseSideLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eye_noseSideLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:left_eye_noseSideLimit_x instead.")
  (left_eye_noseSideLimit_x m))

(cl:ensure-generic-function 'left_eye_noseSideLimit_y-val :lambda-list '(m))
(cl:defmethod left_eye_noseSideLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eye_noseSideLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:left_eye_noseSideLimit_y instead.")
  (left_eye_noseSideLimit_y m))

(cl:ensure-generic-function 'left_eye_earSideLimit_x-val :lambda-list '(m))
(cl:defmethod left_eye_earSideLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eye_earSideLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:left_eye_earSideLimit_x instead.")
  (left_eye_earSideLimit_x m))

(cl:ensure-generic-function 'left_eye_earSideLimit_y-val :lambda-list '(m))
(cl:defmethod left_eye_earSideLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eye_earSideLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:left_eye_earSideLimit_y instead.")
  (left_eye_earSideLimit_y m))

(cl:ensure-generic-function 'left_eye_topLimit_x-val :lambda-list '(m))
(cl:defmethod left_eye_topLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eye_topLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:left_eye_topLimit_x instead.")
  (left_eye_topLimit_x m))

(cl:ensure-generic-function 'left_eye_topLimit_y-val :lambda-list '(m))
(cl:defmethod left_eye_topLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eye_topLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:left_eye_topLimit_y instead.")
  (left_eye_topLimit_y m))

(cl:ensure-generic-function 'left_eye_bottomLimit_x-val :lambda-list '(m))
(cl:defmethod left_eye_bottomLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eye_bottomLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:left_eye_bottomLimit_x instead.")
  (left_eye_bottomLimit_x m))

(cl:ensure-generic-function 'left_eye_bottomLimit_y-val :lambda-list '(m))
(cl:defmethod left_eye_bottomLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eye_bottomLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:left_eye_bottomLimit_y instead.")
  (left_eye_bottomLimit_y m))

(cl:ensure-generic-function 'left_eye_midTopEarLimit_x-val :lambda-list '(m))
(cl:defmethod left_eye_midTopEarLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eye_midTopEarLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:left_eye_midTopEarLimit_x instead.")
  (left_eye_midTopEarLimit_x m))

(cl:ensure-generic-function 'left_eye_midTopEarLimit_y-val :lambda-list '(m))
(cl:defmethod left_eye_midTopEarLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eye_midTopEarLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:left_eye_midTopEarLimit_y instead.")
  (left_eye_midTopEarLimit_y m))

(cl:ensure-generic-function 'left_eye_midTopNoseLimit_x-val :lambda-list '(m))
(cl:defmethod left_eye_midTopNoseLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eye_midTopNoseLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:left_eye_midTopNoseLimit_x instead.")
  (left_eye_midTopNoseLimit_x m))

(cl:ensure-generic-function 'left_eye_midTopNoseLimit_y-val :lambda-list '(m))
(cl:defmethod left_eye_midTopNoseLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eye_midTopNoseLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:left_eye_midTopNoseLimit_y instead.")
  (left_eye_midTopNoseLimit_y m))

(cl:ensure-generic-function 'right_eyebrow_noseSideLimit_x-val :lambda-list '(m))
(cl:defmethod right_eyebrow_noseSideLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eyebrow_noseSideLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:right_eyebrow_noseSideLimit_x instead.")
  (right_eyebrow_noseSideLimit_x m))

(cl:ensure-generic-function 'right_eyebrow_noseSideLimit_y-val :lambda-list '(m))
(cl:defmethod right_eyebrow_noseSideLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eyebrow_noseSideLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:right_eyebrow_noseSideLimit_y instead.")
  (right_eyebrow_noseSideLimit_y m))

(cl:ensure-generic-function 'right_eyebrow_center_x-val :lambda-list '(m))
(cl:defmethod right_eyebrow_center_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eyebrow_center_x-val is deprecated.  Use nao_interaction_msgs-msg:right_eyebrow_center_x instead.")
  (right_eyebrow_center_x m))

(cl:ensure-generic-function 'right_eyebrow_center_y-val :lambda-list '(m))
(cl:defmethod right_eyebrow_center_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eyebrow_center_y-val is deprecated.  Use nao_interaction_msgs-msg:right_eyebrow_center_y instead.")
  (right_eyebrow_center_y m))

(cl:ensure-generic-function 'right_eyebrow_earSideLimit_x-val :lambda-list '(m))
(cl:defmethod right_eyebrow_earSideLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eyebrow_earSideLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:right_eyebrow_earSideLimit_x instead.")
  (right_eyebrow_earSideLimit_x m))

(cl:ensure-generic-function 'right_eyebrow_earSideLimit_y-val :lambda-list '(m))
(cl:defmethod right_eyebrow_earSideLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:right_eyebrow_earSideLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:right_eyebrow_earSideLimit_y instead.")
  (right_eyebrow_earSideLimit_y m))

(cl:ensure-generic-function 'left_eyebrow_noseSideLimit_x-val :lambda-list '(m))
(cl:defmethod left_eyebrow_noseSideLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eyebrow_noseSideLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:left_eyebrow_noseSideLimit_x instead.")
  (left_eyebrow_noseSideLimit_x m))

(cl:ensure-generic-function 'left_eyebrow_noseSideLimit_y-val :lambda-list '(m))
(cl:defmethod left_eyebrow_noseSideLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eyebrow_noseSideLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:left_eyebrow_noseSideLimit_y instead.")
  (left_eyebrow_noseSideLimit_y m))

(cl:ensure-generic-function 'left_eyebrow_center_x-val :lambda-list '(m))
(cl:defmethod left_eyebrow_center_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eyebrow_center_x-val is deprecated.  Use nao_interaction_msgs-msg:left_eyebrow_center_x instead.")
  (left_eyebrow_center_x m))

(cl:ensure-generic-function 'left_eyebrow_center_y-val :lambda-list '(m))
(cl:defmethod left_eyebrow_center_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eyebrow_center_y-val is deprecated.  Use nao_interaction_msgs-msg:left_eyebrow_center_y instead.")
  (left_eyebrow_center_y m))

(cl:ensure-generic-function 'left_eyebrow_earSideLimit_x-val :lambda-list '(m))
(cl:defmethod left_eyebrow_earSideLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eyebrow_earSideLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:left_eyebrow_earSideLimit_x instead.")
  (left_eyebrow_earSideLimit_x m))

(cl:ensure-generic-function 'left_eyebrow_earSideLimit_y-val :lambda-list '(m))
(cl:defmethod left_eyebrow_earSideLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:left_eyebrow_earSideLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:left_eyebrow_earSideLimit_y instead.")
  (left_eyebrow_earSideLimit_y m))

(cl:ensure-generic-function 'nose_bottomCenterLimit_x-val :lambda-list '(m))
(cl:defmethod nose_bottomCenterLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:nose_bottomCenterLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:nose_bottomCenterLimit_x instead.")
  (nose_bottomCenterLimit_x m))

(cl:ensure-generic-function 'nose_bottomCenterLimit_y-val :lambda-list '(m))
(cl:defmethod nose_bottomCenterLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:nose_bottomCenterLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:nose_bottomCenterLimit_y instead.")
  (nose_bottomCenterLimit_y m))

(cl:ensure-generic-function 'nose_bottomLeftLimit_x-val :lambda-list '(m))
(cl:defmethod nose_bottomLeftLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:nose_bottomLeftLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:nose_bottomLeftLimit_x instead.")
  (nose_bottomLeftLimit_x m))

(cl:ensure-generic-function 'nose_bottomLeftLimit_y-val :lambda-list '(m))
(cl:defmethod nose_bottomLeftLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:nose_bottomLeftLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:nose_bottomLeftLimit_y instead.")
  (nose_bottomLeftLimit_y m))

(cl:ensure-generic-function 'nose_bottomRightLimit_x-val :lambda-list '(m))
(cl:defmethod nose_bottomRightLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:nose_bottomRightLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:nose_bottomRightLimit_x instead.")
  (nose_bottomRightLimit_x m))

(cl:ensure-generic-function 'nose_bottomRightLimit_y-val :lambda-list '(m))
(cl:defmethod nose_bottomRightLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:nose_bottomRightLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:nose_bottomRightLimit_y instead.")
  (nose_bottomRightLimit_y m))

(cl:ensure-generic-function 'mouth_leftLimit_x-val :lambda-list '(m))
(cl:defmethod mouth_leftLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_leftLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:mouth_leftLimit_x instead.")
  (mouth_leftLimit_x m))

(cl:ensure-generic-function 'mouth_leftLimit_y-val :lambda-list '(m))
(cl:defmethod mouth_leftLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_leftLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:mouth_leftLimit_y instead.")
  (mouth_leftLimit_y m))

(cl:ensure-generic-function 'mouth_rightLimit_x-val :lambda-list '(m))
(cl:defmethod mouth_rightLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_rightLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:mouth_rightLimit_x instead.")
  (mouth_rightLimit_x m))

(cl:ensure-generic-function 'mouth_rightLimit_y-val :lambda-list '(m))
(cl:defmethod mouth_rightLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_rightLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:mouth_rightLimit_y instead.")
  (mouth_rightLimit_y m))

(cl:ensure-generic-function 'mouth_topLimit_x-val :lambda-list '(m))
(cl:defmethod mouth_topLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_topLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:mouth_topLimit_x instead.")
  (mouth_topLimit_x m))

(cl:ensure-generic-function 'mouth_topLimit_y-val :lambda-list '(m))
(cl:defmethod mouth_topLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_topLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:mouth_topLimit_y instead.")
  (mouth_topLimit_y m))

(cl:ensure-generic-function 'mouth_bottomLimit_x-val :lambda-list '(m))
(cl:defmethod mouth_bottomLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_bottomLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:mouth_bottomLimit_x instead.")
  (mouth_bottomLimit_x m))

(cl:ensure-generic-function 'mouth_bottomLimit_y-val :lambda-list '(m))
(cl:defmethod mouth_bottomLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_bottomLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:mouth_bottomLimit_y instead.")
  (mouth_bottomLimit_y m))

(cl:ensure-generic-function 'mouth_midTopLeftLimit_x-val :lambda-list '(m))
(cl:defmethod mouth_midTopLeftLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_midTopLeftLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:mouth_midTopLeftLimit_x instead.")
  (mouth_midTopLeftLimit_x m))

(cl:ensure-generic-function 'mouth_midTopLeftLimit_y-val :lambda-list '(m))
(cl:defmethod mouth_midTopLeftLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_midTopLeftLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:mouth_midTopLeftLimit_y instead.")
  (mouth_midTopLeftLimit_y m))

(cl:ensure-generic-function 'mouth_midTopRightLimit_x-val :lambda-list '(m))
(cl:defmethod mouth_midTopRightLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_midTopRightLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:mouth_midTopRightLimit_x instead.")
  (mouth_midTopRightLimit_x m))

(cl:ensure-generic-function 'mouth_midTopRightLimit_y-val :lambda-list '(m))
(cl:defmethod mouth_midTopRightLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_midTopRightLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:mouth_midTopRightLimit_y instead.")
  (mouth_midTopRightLimit_y m))

(cl:ensure-generic-function 'mouth_midBottomRightLimit_x-val :lambda-list '(m))
(cl:defmethod mouth_midBottomRightLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_midBottomRightLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:mouth_midBottomRightLimit_x instead.")
  (mouth_midBottomRightLimit_x m))

(cl:ensure-generic-function 'mouth_midBottomRightLimit_y-val :lambda-list '(m))
(cl:defmethod mouth_midBottomRightLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_midBottomRightLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:mouth_midBottomRightLimit_y instead.")
  (mouth_midBottomRightLimit_y m))

(cl:ensure-generic-function 'mouth_midBottomLeftLimit_x-val :lambda-list '(m))
(cl:defmethod mouth_midBottomLeftLimit_x-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_midBottomLeftLimit_x-val is deprecated.  Use nao_interaction_msgs-msg:mouth_midBottomLeftLimit_x instead.")
  (mouth_midBottomLeftLimit_x m))

(cl:ensure-generic-function 'mouth_midBottomLeftLimit_y-val :lambda-list '(m))
(cl:defmethod mouth_midBottomLeftLimit_y-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:mouth_midBottomLeftLimit_y-val is deprecated.  Use nao_interaction_msgs-msg:mouth_midBottomLeftLimit_y instead.")
  (mouth_midBottomLeftLimit_y m))

(cl:ensure-generic-function 'camera_0_pose-val :lambda-list '(m))
(cl:defmethod camera_0_pose-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:camera_0_pose-val is deprecated.  Use nao_interaction_msgs-msg:camera_0_pose instead.")
  (camera_0_pose m))

(cl:ensure-generic-function 'camera_1_pose-val :lambda-list '(m))
(cl:defmethod camera_1_pose-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:camera_1_pose-val is deprecated.  Use nao_interaction_msgs-msg:camera_1_pose instead.")
  (camera_1_pose m))

(cl:ensure-generic-function 'camera_id-val :lambda-list '(m))
(cl:defmethod camera_id-val ((m <FaceDetected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_interaction_msgs-msg:camera_id-val is deprecated.  Use nao_interaction_msgs-msg:camera_id instead.")
  (camera_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceDetected>) ostream)
  "Serializes a message object of type '<FaceDetected>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'face_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'score_reco) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'face_label) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape_alpha) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape_beta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape_sizeX) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape_sizeY) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_eyeCenter_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_eyeCenter_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_noseSideLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_noseSideLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_earSideLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_earSideLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_topLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_topLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_bottomLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_bottomLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_midTopEarLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_midTopEarLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_midTopNoseLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_midTopNoseLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_eyeCenter_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_eyeCenter_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_noseSideLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_noseSideLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_earSideLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_earSideLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_topLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_topLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_bottomLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_bottomLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_midTopEarLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_midTopEarLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_midTopNoseLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_midTopNoseLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eyebrow_noseSideLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eyebrow_noseSideLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eyebrow_center_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eyebrow_center_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eyebrow_earSideLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eyebrow_earSideLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eyebrow_noseSideLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eyebrow_noseSideLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eyebrow_center_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eyebrow_center_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eyebrow_earSideLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eyebrow_earSideLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nose_bottomCenterLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nose_bottomCenterLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nose_bottomLeftLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nose_bottomLeftLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nose_bottomRightLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nose_bottomRightLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_leftLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_leftLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_rightLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_rightLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_topLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_topLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_bottomLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_bottomLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_midTopLeftLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_midTopLeftLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_midTopRightLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_midTopRightLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_midBottomRightLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_midBottomRightLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_midBottomLeftLimit_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mouth_midBottomLeftLimit_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_0_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_1_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_id) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceDetected>) istream)
  "Deserializes a message object of type '<FaceDetected>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'face_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'score_reco) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'face_label) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape_alpha) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape_beta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape_sizeX) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape_sizeY) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_eyeCenter_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_eyeCenter_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_noseSideLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_noseSideLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_earSideLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_earSideLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_topLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_topLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_bottomLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_bottomLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_midTopEarLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_midTopEarLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_midTopNoseLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_midTopNoseLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_eyeCenter_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_eyeCenter_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_noseSideLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_noseSideLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_earSideLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_earSideLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_topLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_topLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_bottomLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_bottomLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_midTopEarLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_midTopEarLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_midTopNoseLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_midTopNoseLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eyebrow_noseSideLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eyebrow_noseSideLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eyebrow_center_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eyebrow_center_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eyebrow_earSideLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eyebrow_earSideLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eyebrow_noseSideLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eyebrow_noseSideLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eyebrow_center_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eyebrow_center_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eyebrow_earSideLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eyebrow_earSideLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nose_bottomCenterLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nose_bottomCenterLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nose_bottomLeftLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nose_bottomLeftLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nose_bottomRightLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nose_bottomRightLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_leftLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_leftLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_rightLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_rightLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_topLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_topLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_bottomLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_bottomLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_midTopLeftLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_midTopLeftLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_midTopRightLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_midTopRightLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_midBottomRightLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_midBottomRightLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_midBottomLeftLimit_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mouth_midBottomLeftLimit_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_0_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_1_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_id) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceDetected>)))
  "Returns string type for a message object of type '<FaceDetected>"
  "nao_interaction_msgs/FaceDetected")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceDetected)))
  "Returns string type for a message object of type 'FaceDetected"
  "nao_interaction_msgs/FaceDetected")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceDetected>)))
  "Returns md5sum for a message object of type '<FaceDetected>"
  "3b3868bc92bb74386686642b1cf73f53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceDetected)))
  "Returns md5sum for a message object of type 'FaceDetected"
  "3b3868bc92bb74386686642b1cf73f53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceDetected>)))
  "Returns full string definition for message of type '<FaceDetected>"
  (cl:format cl:nil "# Message emitted by Nao face detection module.~%# It contains the list of faces detected and the cameras poses~%~%Header header~%~%# Face-specific related information~%~%std_msgs/Int32 face_id~%std_msgs/Float32 score_reco~%std_msgs/String face_label~%~%# Shape related information~%~%std_msgs/Float32 shape_alpha~%std_msgs/Float32 shape_beta~%std_msgs/Float32 shape_sizeX~%std_msgs/Float32 shape_sizeY~%~%# Eyes related information~%~%std_msgs/Float32 right_eye_eyeCenter_x~%std_msgs/Float32 right_eye_eyeCenter_y~%std_msgs/Float32 right_eye_noseSideLimit_x~%std_msgs/Float32 right_eye_noseSideLimit_y~%std_msgs/Float32 right_eye_earSideLimit_x~%std_msgs/Float32 right_eye_earSideLimit_y~%std_msgs/Float32 right_eye_topLimit_x~%std_msgs/Float32 right_eye_topLimit_y~%std_msgs/Float32 right_eye_bottomLimit_x~%std_msgs/Float32 right_eye_bottomLimit_y~%std_msgs/Float32 right_eye_midTopEarLimit_x~%std_msgs/Float32 right_eye_midTopEarLimit_y~%std_msgs/Float32 right_eye_midTopNoseLimit_x~%std_msgs/Float32 right_eye_midTopNoseLimit_y~%~%std_msgs/Float32 left_eye_eyeCenter_x~%std_msgs/Float32 left_eye_eyeCenter_y~%std_msgs/Float32 left_eye_noseSideLimit_x~%std_msgs/Float32 left_eye_noseSideLimit_y~%std_msgs/Float32 left_eye_earSideLimit_x~%std_msgs/Float32 left_eye_earSideLimit_y~%std_msgs/Float32 left_eye_topLimit_x~%std_msgs/Float32 left_eye_topLimit_y~%std_msgs/Float32 left_eye_bottomLimit_x~%std_msgs/Float32 left_eye_bottomLimit_y~%std_msgs/Float32 left_eye_midTopEarLimit_x~%std_msgs/Float32 left_eye_midTopEarLimit_y~%std_msgs/Float32 left_eye_midTopNoseLimit_x~%std_msgs/Float32 left_eye_midTopNoseLimit_y~%~%# Eyebrows related information~%~%std_msgs/Float32 right_eyebrow_noseSideLimit_x~%std_msgs/Float32 right_eyebrow_noseSideLimit_y~%std_msgs/Float32 right_eyebrow_center_x~%std_msgs/Float32 right_eyebrow_center_y~%std_msgs/Float32 right_eyebrow_earSideLimit_x~%std_msgs/Float32 right_eyebrow_earSideLimit_y~%~%std_msgs/Float32 left_eyebrow_noseSideLimit_x~%std_msgs/Float32 left_eyebrow_noseSideLimit_y~%std_msgs/Float32 left_eyebrow_center_x~%std_msgs/Float32 left_eyebrow_center_y~%std_msgs/Float32 left_eyebrow_earSideLimit_x~%std_msgs/Float32 left_eyebrow_earSideLimit_y~%~%# Nose related information~%~%std_msgs/Float32 nose_bottomCenterLimit_x~%std_msgs/Float32 nose_bottomCenterLimit_y~%std_msgs/Float32 nose_bottomLeftLimit_x~%std_msgs/Float32 nose_bottomLeftLimit_y~%std_msgs/Float32 nose_bottomRightLimit_x~%std_msgs/Float32 nose_bottomRightLimit_y~%~%# Mouth related information~%~%std_msgs/Float32 mouth_leftLimit_x~%std_msgs/Float32 mouth_leftLimit_y~%std_msgs/Float32 mouth_rightLimit_x~%std_msgs/Float32 mouth_rightLimit_y~%std_msgs/Float32 mouth_topLimit_x~%std_msgs/Float32 mouth_topLimit_y~%std_msgs/Float32 mouth_bottomLimit_x~%std_msgs/Float32 mouth_bottomLimit_y~%std_msgs/Float32 mouth_midTopLeftLimit_x~%std_msgs/Float32 mouth_midTopLeftLimit_y~%std_msgs/Float32 mouth_midTopRightLimit_x~%std_msgs/Float32 mouth_midTopRightLimit_y~%std_msgs/Float32 mouth_midBottomRightLimit_x~%std_msgs/Float32 mouth_midBottomRightLimit_y~%std_msgs/Float32 mouth_midBottomLeftLimit_x~%std_msgs/Float32 mouth_midBottomLeftLimit_y~%~%# Camera related information~%~%geometry_msgs/Pose camera_0_pose~%geometry_msgs/Pose camera_1_pose~%std_msgs/Int32 camera_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceDetected)))
  "Returns full string definition for message of type 'FaceDetected"
  (cl:format cl:nil "# Message emitted by Nao face detection module.~%# It contains the list of faces detected and the cameras poses~%~%Header header~%~%# Face-specific related information~%~%std_msgs/Int32 face_id~%std_msgs/Float32 score_reco~%std_msgs/String face_label~%~%# Shape related information~%~%std_msgs/Float32 shape_alpha~%std_msgs/Float32 shape_beta~%std_msgs/Float32 shape_sizeX~%std_msgs/Float32 shape_sizeY~%~%# Eyes related information~%~%std_msgs/Float32 right_eye_eyeCenter_x~%std_msgs/Float32 right_eye_eyeCenter_y~%std_msgs/Float32 right_eye_noseSideLimit_x~%std_msgs/Float32 right_eye_noseSideLimit_y~%std_msgs/Float32 right_eye_earSideLimit_x~%std_msgs/Float32 right_eye_earSideLimit_y~%std_msgs/Float32 right_eye_topLimit_x~%std_msgs/Float32 right_eye_topLimit_y~%std_msgs/Float32 right_eye_bottomLimit_x~%std_msgs/Float32 right_eye_bottomLimit_y~%std_msgs/Float32 right_eye_midTopEarLimit_x~%std_msgs/Float32 right_eye_midTopEarLimit_y~%std_msgs/Float32 right_eye_midTopNoseLimit_x~%std_msgs/Float32 right_eye_midTopNoseLimit_y~%~%std_msgs/Float32 left_eye_eyeCenter_x~%std_msgs/Float32 left_eye_eyeCenter_y~%std_msgs/Float32 left_eye_noseSideLimit_x~%std_msgs/Float32 left_eye_noseSideLimit_y~%std_msgs/Float32 left_eye_earSideLimit_x~%std_msgs/Float32 left_eye_earSideLimit_y~%std_msgs/Float32 left_eye_topLimit_x~%std_msgs/Float32 left_eye_topLimit_y~%std_msgs/Float32 left_eye_bottomLimit_x~%std_msgs/Float32 left_eye_bottomLimit_y~%std_msgs/Float32 left_eye_midTopEarLimit_x~%std_msgs/Float32 left_eye_midTopEarLimit_y~%std_msgs/Float32 left_eye_midTopNoseLimit_x~%std_msgs/Float32 left_eye_midTopNoseLimit_y~%~%# Eyebrows related information~%~%std_msgs/Float32 right_eyebrow_noseSideLimit_x~%std_msgs/Float32 right_eyebrow_noseSideLimit_y~%std_msgs/Float32 right_eyebrow_center_x~%std_msgs/Float32 right_eyebrow_center_y~%std_msgs/Float32 right_eyebrow_earSideLimit_x~%std_msgs/Float32 right_eyebrow_earSideLimit_y~%~%std_msgs/Float32 left_eyebrow_noseSideLimit_x~%std_msgs/Float32 left_eyebrow_noseSideLimit_y~%std_msgs/Float32 left_eyebrow_center_x~%std_msgs/Float32 left_eyebrow_center_y~%std_msgs/Float32 left_eyebrow_earSideLimit_x~%std_msgs/Float32 left_eyebrow_earSideLimit_y~%~%# Nose related information~%~%std_msgs/Float32 nose_bottomCenterLimit_x~%std_msgs/Float32 nose_bottomCenterLimit_y~%std_msgs/Float32 nose_bottomLeftLimit_x~%std_msgs/Float32 nose_bottomLeftLimit_y~%std_msgs/Float32 nose_bottomRightLimit_x~%std_msgs/Float32 nose_bottomRightLimit_y~%~%# Mouth related information~%~%std_msgs/Float32 mouth_leftLimit_x~%std_msgs/Float32 mouth_leftLimit_y~%std_msgs/Float32 mouth_rightLimit_x~%std_msgs/Float32 mouth_rightLimit_y~%std_msgs/Float32 mouth_topLimit_x~%std_msgs/Float32 mouth_topLimit_y~%std_msgs/Float32 mouth_bottomLimit_x~%std_msgs/Float32 mouth_bottomLimit_y~%std_msgs/Float32 mouth_midTopLeftLimit_x~%std_msgs/Float32 mouth_midTopLeftLimit_y~%std_msgs/Float32 mouth_midTopRightLimit_x~%std_msgs/Float32 mouth_midTopRightLimit_y~%std_msgs/Float32 mouth_midBottomRightLimit_x~%std_msgs/Float32 mouth_midBottomRightLimit_y~%std_msgs/Float32 mouth_midBottomLeftLimit_x~%std_msgs/Float32 mouth_midBottomLeftLimit_y~%~%# Camera related information~%~%geometry_msgs/Pose camera_0_pose~%geometry_msgs/Pose camera_1_pose~%std_msgs/Int32 camera_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceDetected>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'face_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'score_reco))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'face_label))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape_alpha))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape_beta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape_sizeX))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape_sizeY))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_eyeCenter_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_eyeCenter_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_noseSideLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_noseSideLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_earSideLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_earSideLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_topLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_topLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_bottomLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_bottomLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_midTopEarLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_midTopEarLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_midTopNoseLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_midTopNoseLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_eyeCenter_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_eyeCenter_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_noseSideLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_noseSideLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_earSideLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_earSideLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_topLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_topLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_bottomLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_bottomLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_midTopEarLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_midTopEarLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_midTopNoseLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_midTopNoseLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eyebrow_noseSideLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eyebrow_noseSideLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eyebrow_center_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eyebrow_center_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eyebrow_earSideLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eyebrow_earSideLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eyebrow_noseSideLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eyebrow_noseSideLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eyebrow_center_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eyebrow_center_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eyebrow_earSideLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eyebrow_earSideLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nose_bottomCenterLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nose_bottomCenterLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nose_bottomLeftLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nose_bottomLeftLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nose_bottomRightLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nose_bottomRightLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_leftLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_leftLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_rightLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_rightLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_topLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_topLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_bottomLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_bottomLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_midTopLeftLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_midTopLeftLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_midTopRightLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_midTopRightLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_midBottomRightLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_midBottomRightLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_midBottomLeftLimit_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mouth_midBottomLeftLimit_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_0_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_1_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceDetected>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceDetected
    (cl:cons ':header (header msg))
    (cl:cons ':face_id (face_id msg))
    (cl:cons ':score_reco (score_reco msg))
    (cl:cons ':face_label (face_label msg))
    (cl:cons ':shape_alpha (shape_alpha msg))
    (cl:cons ':shape_beta (shape_beta msg))
    (cl:cons ':shape_sizeX (shape_sizeX msg))
    (cl:cons ':shape_sizeY (shape_sizeY msg))
    (cl:cons ':right_eye_eyeCenter_x (right_eye_eyeCenter_x msg))
    (cl:cons ':right_eye_eyeCenter_y (right_eye_eyeCenter_y msg))
    (cl:cons ':right_eye_noseSideLimit_x (right_eye_noseSideLimit_x msg))
    (cl:cons ':right_eye_noseSideLimit_y (right_eye_noseSideLimit_y msg))
    (cl:cons ':right_eye_earSideLimit_x (right_eye_earSideLimit_x msg))
    (cl:cons ':right_eye_earSideLimit_y (right_eye_earSideLimit_y msg))
    (cl:cons ':right_eye_topLimit_x (right_eye_topLimit_x msg))
    (cl:cons ':right_eye_topLimit_y (right_eye_topLimit_y msg))
    (cl:cons ':right_eye_bottomLimit_x (right_eye_bottomLimit_x msg))
    (cl:cons ':right_eye_bottomLimit_y (right_eye_bottomLimit_y msg))
    (cl:cons ':right_eye_midTopEarLimit_x (right_eye_midTopEarLimit_x msg))
    (cl:cons ':right_eye_midTopEarLimit_y (right_eye_midTopEarLimit_y msg))
    (cl:cons ':right_eye_midTopNoseLimit_x (right_eye_midTopNoseLimit_x msg))
    (cl:cons ':right_eye_midTopNoseLimit_y (right_eye_midTopNoseLimit_y msg))
    (cl:cons ':left_eye_eyeCenter_x (left_eye_eyeCenter_x msg))
    (cl:cons ':left_eye_eyeCenter_y (left_eye_eyeCenter_y msg))
    (cl:cons ':left_eye_noseSideLimit_x (left_eye_noseSideLimit_x msg))
    (cl:cons ':left_eye_noseSideLimit_y (left_eye_noseSideLimit_y msg))
    (cl:cons ':left_eye_earSideLimit_x (left_eye_earSideLimit_x msg))
    (cl:cons ':left_eye_earSideLimit_y (left_eye_earSideLimit_y msg))
    (cl:cons ':left_eye_topLimit_x (left_eye_topLimit_x msg))
    (cl:cons ':left_eye_topLimit_y (left_eye_topLimit_y msg))
    (cl:cons ':left_eye_bottomLimit_x (left_eye_bottomLimit_x msg))
    (cl:cons ':left_eye_bottomLimit_y (left_eye_bottomLimit_y msg))
    (cl:cons ':left_eye_midTopEarLimit_x (left_eye_midTopEarLimit_x msg))
    (cl:cons ':left_eye_midTopEarLimit_y (left_eye_midTopEarLimit_y msg))
    (cl:cons ':left_eye_midTopNoseLimit_x (left_eye_midTopNoseLimit_x msg))
    (cl:cons ':left_eye_midTopNoseLimit_y (left_eye_midTopNoseLimit_y msg))
    (cl:cons ':right_eyebrow_noseSideLimit_x (right_eyebrow_noseSideLimit_x msg))
    (cl:cons ':right_eyebrow_noseSideLimit_y (right_eyebrow_noseSideLimit_y msg))
    (cl:cons ':right_eyebrow_center_x (right_eyebrow_center_x msg))
    (cl:cons ':right_eyebrow_center_y (right_eyebrow_center_y msg))
    (cl:cons ':right_eyebrow_earSideLimit_x (right_eyebrow_earSideLimit_x msg))
    (cl:cons ':right_eyebrow_earSideLimit_y (right_eyebrow_earSideLimit_y msg))
    (cl:cons ':left_eyebrow_noseSideLimit_x (left_eyebrow_noseSideLimit_x msg))
    (cl:cons ':left_eyebrow_noseSideLimit_y (left_eyebrow_noseSideLimit_y msg))
    (cl:cons ':left_eyebrow_center_x (left_eyebrow_center_x msg))
    (cl:cons ':left_eyebrow_center_y (left_eyebrow_center_y msg))
    (cl:cons ':left_eyebrow_earSideLimit_x (left_eyebrow_earSideLimit_x msg))
    (cl:cons ':left_eyebrow_earSideLimit_y (left_eyebrow_earSideLimit_y msg))
    (cl:cons ':nose_bottomCenterLimit_x (nose_bottomCenterLimit_x msg))
    (cl:cons ':nose_bottomCenterLimit_y (nose_bottomCenterLimit_y msg))
    (cl:cons ':nose_bottomLeftLimit_x (nose_bottomLeftLimit_x msg))
    (cl:cons ':nose_bottomLeftLimit_y (nose_bottomLeftLimit_y msg))
    (cl:cons ':nose_bottomRightLimit_x (nose_bottomRightLimit_x msg))
    (cl:cons ':nose_bottomRightLimit_y (nose_bottomRightLimit_y msg))
    (cl:cons ':mouth_leftLimit_x (mouth_leftLimit_x msg))
    (cl:cons ':mouth_leftLimit_y (mouth_leftLimit_y msg))
    (cl:cons ':mouth_rightLimit_x (mouth_rightLimit_x msg))
    (cl:cons ':mouth_rightLimit_y (mouth_rightLimit_y msg))
    (cl:cons ':mouth_topLimit_x (mouth_topLimit_x msg))
    (cl:cons ':mouth_topLimit_y (mouth_topLimit_y msg))
    (cl:cons ':mouth_bottomLimit_x (mouth_bottomLimit_x msg))
    (cl:cons ':mouth_bottomLimit_y (mouth_bottomLimit_y msg))
    (cl:cons ':mouth_midTopLeftLimit_x (mouth_midTopLeftLimit_x msg))
    (cl:cons ':mouth_midTopLeftLimit_y (mouth_midTopLeftLimit_y msg))
    (cl:cons ':mouth_midTopRightLimit_x (mouth_midTopRightLimit_x msg))
    (cl:cons ':mouth_midTopRightLimit_y (mouth_midTopRightLimit_y msg))
    (cl:cons ':mouth_midBottomRightLimit_x (mouth_midBottomRightLimit_x msg))
    (cl:cons ':mouth_midBottomRightLimit_y (mouth_midBottomRightLimit_y msg))
    (cl:cons ':mouth_midBottomLeftLimit_x (mouth_midBottomLeftLimit_x msg))
    (cl:cons ':mouth_midBottomLeftLimit_y (mouth_midBottomLeftLimit_y msg))
    (cl:cons ':camera_0_pose (camera_0_pose msg))
    (cl:cons ':camera_1_pose (camera_1_pose msg))
    (cl:cons ':camera_id (camera_id msg))
))
