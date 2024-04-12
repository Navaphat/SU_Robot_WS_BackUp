
(cl:in-package :asdf)

(defsystem "test_ros_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "sampleService" :depends-on ("_package_sampleService"))
    (:file "_package_sampleService" :depends-on ("_package"))
  ))