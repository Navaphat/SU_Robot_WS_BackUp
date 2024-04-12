; Auto-generated. Do not edit!


(cl:in-package basic_test-srv)


;//! \htmlinclude Multiply-request.msg.html

(cl:defclass <Multiply-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:fixnum
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Multiply-request (<Multiply-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Multiply-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Multiply-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name basic_test-srv:<Multiply-request> is deprecated: use basic_test-srv:Multiply-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <Multiply-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basic_test-srv:num1-val is deprecated.  Use basic_test-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <Multiply-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basic_test-srv:num2-val is deprecated.  Use basic_test-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Multiply-request>) ostream)
  "Serializes a message object of type '<Multiply-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Multiply-request>) istream)
  "Deserializes a message object of type '<Multiply-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Multiply-request>)))
  "Returns string type for a service object of type '<Multiply-request>"
  "basic_test/MultiplyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Multiply-request)))
  "Returns string type for a service object of type 'Multiply-request"
  "basic_test/MultiplyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Multiply-request>)))
  "Returns md5sum for a message object of type '<Multiply-request>"
  "08c6eb99904d401fb2c8955af68adc03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Multiply-request)))
  "Returns md5sum for a message object of type 'Multiply-request"
  "08c6eb99904d401fb2c8955af68adc03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Multiply-request>)))
  "Returns full string definition for message of type '<Multiply-request>"
  (cl:format cl:nil "int16 num1~%int16 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Multiply-request)))
  "Returns full string definition for message of type 'Multiply-request"
  (cl:format cl:nil "int16 num1~%int16 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Multiply-request>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Multiply-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Multiply-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude Multiply-response.msg.html

(cl:defclass <Multiply-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass Multiply-response (<Multiply-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Multiply-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Multiply-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name basic_test-srv:<Multiply-response> is deprecated: use basic_test-srv:Multiply-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Multiply-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basic_test-srv:result-val is deprecated.  Use basic_test-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Multiply-response>) ostream)
  "Serializes a message object of type '<Multiply-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Multiply-response>) istream)
  "Deserializes a message object of type '<Multiply-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Multiply-response>)))
  "Returns string type for a service object of type '<Multiply-response>"
  "basic_test/MultiplyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Multiply-response)))
  "Returns string type for a service object of type 'Multiply-response"
  "basic_test/MultiplyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Multiply-response>)))
  "Returns md5sum for a message object of type '<Multiply-response>"
  "08c6eb99904d401fb2c8955af68adc03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Multiply-response)))
  "Returns md5sum for a message object of type 'Multiply-response"
  "08c6eb99904d401fb2c8955af68adc03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Multiply-response>)))
  "Returns full string definition for message of type '<Multiply-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Multiply-response)))
  "Returns full string definition for message of type 'Multiply-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Multiply-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Multiply-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Multiply-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Multiply)))
  'Multiply-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Multiply)))
  'Multiply-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Multiply)))
  "Returns string type for a service object of type '<Multiply>"
  "basic_test/Multiply")