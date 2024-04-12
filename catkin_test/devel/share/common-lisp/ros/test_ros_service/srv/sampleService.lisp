; Auto-generated. Do not edit!


(cl:in-package test_ros_service-srv)


;//! \htmlinclude sampleService-request.msg.html

(cl:defclass <sampleService-request> (roslisp-msg-protocol:ros-message)
  ((one_or_zero
    :reader one_or_zero
    :initarg :one_or_zero
    :type cl:integer
    :initform 0))
)

(cl:defclass sampleService-request (<sampleService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sampleService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sampleService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_ros_service-srv:<sampleService-request> is deprecated: use test_ros_service-srv:sampleService-request instead.")))

(cl:ensure-generic-function 'one_or_zero-val :lambda-list '(m))
(cl:defmethod one_or_zero-val ((m <sampleService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_ros_service-srv:one_or_zero-val is deprecated.  Use test_ros_service-srv:one_or_zero instead.")
  (one_or_zero m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sampleService-request>) ostream)
  "Serializes a message object of type '<sampleService-request>"
  (cl:let* ((signed (cl:slot-value msg 'one_or_zero)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sampleService-request>) istream)
  "Deserializes a message object of type '<sampleService-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'one_or_zero) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sampleService-request>)))
  "Returns string type for a service object of type '<sampleService-request>"
  "test_ros_service/sampleServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sampleService-request)))
  "Returns string type for a service object of type 'sampleService-request"
  "test_ros_service/sampleServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sampleService-request>)))
  "Returns md5sum for a message object of type '<sampleService-request>"
  "b59753b55c16f36d035056bfb3b80cf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sampleService-request)))
  "Returns md5sum for a message object of type 'sampleService-request"
  "b59753b55c16f36d035056bfb3b80cf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sampleService-request>)))
  "Returns full string definition for message of type '<sampleService-request>"
  (cl:format cl:nil "int32 one_or_zero~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sampleService-request)))
  "Returns full string definition for message of type 'sampleService-request"
  (cl:format cl:nil "int32 one_or_zero~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sampleService-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sampleService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'sampleService-request
    (cl:cons ':one_or_zero (one_or_zero msg))
))
;//! \htmlinclude sampleService-response.msg.html

(cl:defclass <sampleService-response> (roslisp-msg-protocol:ros-message)
  ((turn
    :reader turn
    :initarg :turn
    :type cl:string
    :initform ""))
)

(cl:defclass sampleService-response (<sampleService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sampleService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sampleService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_ros_service-srv:<sampleService-response> is deprecated: use test_ros_service-srv:sampleService-response instead.")))

(cl:ensure-generic-function 'turn-val :lambda-list '(m))
(cl:defmethod turn-val ((m <sampleService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_ros_service-srv:turn-val is deprecated.  Use test_ros_service-srv:turn instead.")
  (turn m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sampleService-response>) ostream)
  "Serializes a message object of type '<sampleService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'turn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'turn))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sampleService-response>) istream)
  "Deserializes a message object of type '<sampleService-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turn) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'turn) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sampleService-response>)))
  "Returns string type for a service object of type '<sampleService-response>"
  "test_ros_service/sampleServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sampleService-response)))
  "Returns string type for a service object of type 'sampleService-response"
  "test_ros_service/sampleServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sampleService-response>)))
  "Returns md5sum for a message object of type '<sampleService-response>"
  "b59753b55c16f36d035056bfb3b80cf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sampleService-response)))
  "Returns md5sum for a message object of type 'sampleService-response"
  "b59753b55c16f36d035056bfb3b80cf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sampleService-response>)))
  "Returns full string definition for message of type '<sampleService-response>"
  (cl:format cl:nil "string turn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sampleService-response)))
  "Returns full string definition for message of type 'sampleService-response"
  (cl:format cl:nil "string turn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sampleService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'turn))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sampleService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'sampleService-response
    (cl:cons ':turn (turn msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'sampleService)))
  'sampleService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'sampleService)))
  'sampleService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sampleService)))
  "Returns string type for a service object of type '<sampleService>"
  "test_ros_service/sampleService")