; Auto-generated. Do not edit!


(cl:in-package test_custom_msg-msg)


;//! \htmlinclude Student.msg.html

(cl:defclass <Student> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (gpa
    :reader gpa
    :initarg :gpa
    :type cl:float
    :initform 0.0))
)

(cl:defclass Student (<Student>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Student>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Student)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_custom_msg-msg:<Student> is deprecated: use test_custom_msg-msg:Student instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_custom_msg-msg:id-val is deprecated.  Use test_custom_msg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_custom_msg-msg:name-val is deprecated.  Use test_custom_msg-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_custom_msg-msg:age-val is deprecated.  Use test_custom_msg-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'gpa-val :lambda-list '(m))
(cl:defmethod gpa-val ((m <Student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_custom_msg-msg:gpa-val is deprecated.  Use test_custom_msg-msg:gpa instead.")
  (gpa m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Student>) ostream)
  "Serializes a message object of type '<Student>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gpa))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Student>) istream)
  "Deserializes a message object of type '<Student>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gpa) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Student>)))
  "Returns string type for a message object of type '<Student>"
  "test_custom_msg/Student")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Student)))
  "Returns string type for a message object of type 'Student"
  "test_custom_msg/Student")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Student>)))
  "Returns md5sum for a message object of type '<Student>"
  "24ce0792e01568f324298fd20a78d848")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Student)))
  "Returns md5sum for a message object of type 'Student"
  "24ce0792e01568f324298fd20a78d848")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Student>)))
  "Returns full string definition for message of type '<Student>"
  (cl:format cl:nil "string id~%string name~%uint8 age~%float32 gpa~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Student)))
  "Returns full string definition for message of type 'Student"
  (cl:format cl:nil "string id~%string name~%uint8 age~%float32 gpa~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Student>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'name))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Student>))
  "Converts a ROS message object to a list"
  (cl:list 'Student
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':gpa (gpa msg))
))
