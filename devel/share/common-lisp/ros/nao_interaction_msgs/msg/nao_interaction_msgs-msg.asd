
(cl:in-package :asdf)

(defsystem "nao_interaction_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FaceDetected" :depends-on ("_package_FaceDetected"))
    (:file "_package_FaceDetected" :depends-on ("_package"))
    (:file "LandmarkDetected" :depends-on ("_package_LandmarkDetected"))
    (:file "_package_LandmarkDetected" :depends-on ("_package"))
    (:file "AudioSourceLocalization" :depends-on ("_package_AudioSourceLocalization"))
    (:file "_package_AudioSourceLocalization" :depends-on ("_package"))
    (:file "MovementDetected" :depends-on ("_package_MovementDetected"))
    (:file "_package_MovementDetected" :depends-on ("_package"))
  ))