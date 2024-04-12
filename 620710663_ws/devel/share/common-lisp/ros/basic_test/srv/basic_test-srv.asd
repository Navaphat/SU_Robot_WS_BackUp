
(cl:in-package :asdf)

(defsystem "basic_test-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Multiply" :depends-on ("_package_Multiply"))
    (:file "_package_Multiply" :depends-on ("_package"))
  ))