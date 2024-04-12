;; Auto-generated. Do not edit!


(when (boundp 'test_custom_msg::Student)
  (if (not (find-package "TEST_CUSTOM_MSG"))
    (make-package "TEST_CUSTOM_MSG"))
  (shadow 'Student (find-package "TEST_CUSTOM_MSG")))
(unless (find-package "TEST_CUSTOM_MSG::STUDENT")
  (make-package "TEST_CUSTOM_MSG::STUDENT"))

(in-package "ROS")
;;//! \htmlinclude Student.msg.html


(defclass test_custom_msg::Student
  :super ros::object
  :slots (_id _name _age _gpa ))

(defmethod test_custom_msg::Student
  (:init
   (&key
    ((:id __id) "")
    ((:name __name) "")
    ((:age __age) 0)
    ((:gpa __gpa) 0.0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _gpa (float __gpa))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:gpa
   (&optional __gpa)
   (if __gpa (setq _gpa __gpa)) _gpa)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _name
    4 (length _name)
    ;; uint8 _age
    1
    ;; float32 _gpa
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _age
       (write-byte _age s)
     ;; float32 _gpa
       (sys::poke _gpa (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _gpa
     (setq _gpa (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test_custom_msg::Student :md5sum-) "24ce0792e01568f324298fd20a78d848")
(setf (get test_custom_msg::Student :datatype-) "test_custom_msg/Student")
(setf (get test_custom_msg::Student :definition-)
      "string id
string name
uint8 age
float32 gpa
")



(provide :test_custom_msg/Student "24ce0792e01568f324298fd20a78d848")


