;; Auto-generated. Do not edit!


(when (boundp 'basic_test::student)
  (if (not (find-package "BASIC_TEST"))
    (make-package "BASIC_TEST"))
  (shadow 'student (find-package "BASIC_TEST")))
(unless (find-package "BASIC_TEST::STUDENT")
  (make-package "BASIC_TEST::STUDENT"))

(in-package "ROS")
;;//! \htmlinclude student.msg.html


(defclass basic_test::student
  :super ros::object
  :slots (_code _name _gpa ))

(defmethod basic_test::student
  (:init
   (&key
    ((:code __code) "")
    ((:name __name) "")
    ((:gpa __gpa) 0.0)
    )
   (send-super :init)
   (setq _code (string __code))
   (setq _name (string __name))
   (setq _gpa (float __gpa))
   self)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:gpa
   (&optional __gpa)
   (if __gpa (setq _gpa __gpa)) _gpa)
  (:serialization-length
   ()
   (+
    ;; string _code
    4 (length _code)
    ;; string _name
    4 (length _name)
    ;; float32 _gpa
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _code
       (write-long (length _code) s) (princ _code s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _gpa
       (sys::poke _gpa (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _gpa
     (setq _gpa (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get basic_test::student :md5sum-) "5831ce0f3a2c75671382e04fc46dcd8e")
(setf (get basic_test::student :datatype-) "basic_test/student")
(setf (get basic_test::student :definition-)
      "string code
string name
float32 gpa
")



(provide :basic_test/student "5831ce0f3a2c75671382e04fc46dcd8e")


