
(cl:in-package :asdf)

(defsystem "test_custom_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Student" :depends-on ("_package_Student"))
    (:file "_package_Student" :depends-on ("_package"))
  ))