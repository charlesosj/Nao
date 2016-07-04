
(cl:in-package :asdf)

(defsystem "nao_dcm_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BoolService" :depends-on ("_package_BoolService"))
    (:file "_package_BoolService" :depends-on ("_package"))
  ))