
(cl:in-package :asdf)

(defsystem "nao_dcm_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Bumper" :depends-on ("_package_Bumper"))
    (:file "_package_Bumper" :depends-on ("_package"))
    (:file "FSRs" :depends-on ("_package_FSRs"))
    (:file "_package_FSRs" :depends-on ("_package"))
    (:file "Tactile" :depends-on ("_package_Tactile"))
    (:file "_package_Tactile" :depends-on ("_package"))
  ))