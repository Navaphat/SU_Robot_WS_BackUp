;; Auto-generated. Do not edit!


(when (boundp 'test_ros_service::sampleService)
  (if (not (find-package "TEST_ROS_SERVICE"))
    (make-package "TEST_ROS_SERVICE"))
  (shadow 'sampleService (find-package "TEST_ROS_SERVICE")))
(unless (find-package "TEST_ROS_SERVICE::SAMPLESERVICE")
  (make-package "TEST_ROS_SERVICE::SAMPLESERVICE"))
(unless (find-package "TEST_ROS_SERVICE::SAMPLESERVICEREQUEST")
  (make-package "TEST_ROS_SERVICE::SAMPLESERVICEREQUEST"))
(unless (find-package "TEST_ROS_SERVICE::SAMPLESERVICERESPONSE")
  (make-package "TEST_ROS_SERVICE::SAMPLESERVICERESPONSE"))

(in-package "ROS")





(defclass test_ros_service::sampleServiceRequest
  :super ros::object
  :slots (_one_or_zero ))

(defmethod test_ros_service::sampleServiceRequest
  (:init
   (&key
    ((:one_or_zero __one_or_zero) 0)
    )
   (send-super :init)
   (setq _one_or_zero (round __one_or_zero))
   self)
  (:one_or_zero
   (&optional __one_or_zero)
   (if __one_or_zero (setq _one_or_zero __one_or_zero)) _one_or_zero)
  (:serialization-length
   ()
   (+
    ;; int32 _one_or_zero
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _one_or_zero
       (write-long _one_or_zero s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _one_or_zero
     (setq _one_or_zero (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass test_ros_service::sampleServiceResponse
  :super ros::object
  :slots (_turn ))

(defmethod test_ros_service::sampleServiceResponse
  (:init
   (&key
    ((:turn __turn) "")
    )
   (send-super :init)
   (setq _turn (string __turn))
   self)
  (:turn
   (&optional __turn)
   (if __turn (setq _turn __turn)) _turn)
  (:serialization-length
   ()
   (+
    ;; string _turn
    4 (length _turn)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _turn
       (write-long (length _turn) s) (princ _turn s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _turn
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _turn (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass test_ros_service::sampleService
  :super ros::object
  :slots ())

(setf (get test_ros_service::sampleService :md5sum-) "b59753b55c16f36d035056bfb3b80cf0")
(setf (get test_ros_service::sampleService :datatype-) "test_ros_service/sampleService")
(setf (get test_ros_service::sampleService :request) test_ros_service::sampleServiceRequest)
(setf (get test_ros_service::sampleService :response) test_ros_service::sampleServiceResponse)

(defmethod test_ros_service::sampleServiceRequest
  (:response () (instance test_ros_service::sampleServiceResponse :init)))

(setf (get test_ros_service::sampleServiceRequest :md5sum-) "b59753b55c16f36d035056bfb3b80cf0")
(setf (get test_ros_service::sampleServiceRequest :datatype-) "test_ros_service/sampleServiceRequest")
(setf (get test_ros_service::sampleServiceRequest :definition-)
      "int32 one_or_zero
---
string turn
")

(setf (get test_ros_service::sampleServiceResponse :md5sum-) "b59753b55c16f36d035056bfb3b80cf0")
(setf (get test_ros_service::sampleServiceResponse :datatype-) "test_ros_service/sampleServiceResponse")
(setf (get test_ros_service::sampleServiceResponse :definition-)
      "int32 one_or_zero
---
string turn
")



(provide :test_ros_service/sampleService "b59753b55c16f36d035056bfb3b80cf0")


