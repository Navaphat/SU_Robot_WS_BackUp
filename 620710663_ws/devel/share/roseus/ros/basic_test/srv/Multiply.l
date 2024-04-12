;; Auto-generated. Do not edit!


(when (boundp 'basic_test::Multiply)
  (if (not (find-package "BASIC_TEST"))
    (make-package "BASIC_TEST"))
  (shadow 'Multiply (find-package "BASIC_TEST")))
(unless (find-package "BASIC_TEST::MULTIPLY")
  (make-package "BASIC_TEST::MULTIPLY"))
(unless (find-package "BASIC_TEST::MULTIPLYREQUEST")
  (make-package "BASIC_TEST::MULTIPLYREQUEST"))
(unless (find-package "BASIC_TEST::MULTIPLYRESPONSE")
  (make-package "BASIC_TEST::MULTIPLYRESPONSE"))

(in-package "ROS")





(defclass basic_test::MultiplyRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod basic_test::MultiplyRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int16 _num1
    2
    ;; int16 _num2
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _num1
       (write-word _num1 s)
     ;; int16 _num2
       (write-word _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _num1
     (setq _num1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _num2
     (setq _num2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass basic_test::MultiplyResponse
  :super ros::object
  :slots (_result ))

(defmethod basic_test::MultiplyResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass basic_test::Multiply
  :super ros::object
  :slots ())

(setf (get basic_test::Multiply :md5sum-) "08c6eb99904d401fb2c8955af68adc03")
(setf (get basic_test::Multiply :datatype-) "basic_test/Multiply")
(setf (get basic_test::Multiply :request) basic_test::MultiplyRequest)
(setf (get basic_test::Multiply :response) basic_test::MultiplyResponse)

(defmethod basic_test::MultiplyRequest
  (:response () (instance basic_test::MultiplyResponse :init)))

(setf (get basic_test::MultiplyRequest :md5sum-) "08c6eb99904d401fb2c8955af68adc03")
(setf (get basic_test::MultiplyRequest :datatype-) "basic_test/MultiplyRequest")
(setf (get basic_test::MultiplyRequest :definition-)
      "int16 num1
int16 num2
---
string result
")

(setf (get basic_test::MultiplyResponse :md5sum-) "08c6eb99904d401fb2c8955af68adc03")
(setf (get basic_test::MultiplyResponse :datatype-) "basic_test/MultiplyResponse")
(setf (get basic_test::MultiplyResponse :definition-)
      "int16 num1
int16 num2
---
string result
")



(provide :basic_test/Multiply "08c6eb99904d401fb2c8955af68adc03")


