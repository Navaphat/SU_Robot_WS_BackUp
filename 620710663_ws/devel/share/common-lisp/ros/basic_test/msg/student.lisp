; Auto-generated. Do not edit!


(cl:in-package basic_test-msg)


;//! \htmlinclude student.msg.html

(cl:defclass <student> (roslisp-msg-protocol:ros-message)
  ((code
    :reader code
    :initarg :code
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (gpa
    :reader gpa
    :initarg :gpa
    :type cl:float
    :initform 0.0))
)

(cl:defclass student (<student>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <student>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'student)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name basic_test-msg:<student> is deprecated: use basic_test-msg:student instead.")))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basic_test-msg:code-val is deprecated.  Use basic_test-msg:code instead.")
  (code m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basic_test-msg:name-val is deprecated.  Use basic_test-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'gpa-val :lambda-list '(m))
(cl:defmethod gpa-val ((m <student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basic_test-msg:gpa-val is deprecated.  Use basic_test-msg:gpa instead.")
  (gpa m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <student>) ostream)
  "Serializes a message object of type '<student>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gpa))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <student>) istream)
  "Deserializes a message object of type '<student>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gpa) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<student>)))
  "Returns string type for a message object of type '<student>"
  "basic_test/student")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'student)))
  "Returns string type for a message object of type 'student"
  "basic_test/student")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<student>)))
  "Returns md5sum for a message object of type '<student>"
  "5831ce0f3a2c75671382e04fc46dcd8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'student)))
  "Returns md5sum for a message object of type 'student"
  "5831ce0f3a2c75671382e04fc46dcd8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<student>)))
  "Returns full string definition for message of type '<student>"
  (cl:format cl:nil "string code~%string name~%float32 gpa~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'student)))
  "Returns full string definition for message of type 'student"
  (cl:format cl:nil "string code~%string name~%float32 gpa~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <student>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'code))
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <student>))
  "Converts a ROS message object to a list"
  (cl:list 'student
    (cl:cons ':code (code msg))
    (cl:cons ':name (name msg))
    (cl:cons ':gpa (gpa msg))
))
