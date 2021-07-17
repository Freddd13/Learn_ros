; Auto-generated. Do not edit!


(cl:in-package learning_communication-srv)


;//! \htmlinclude Addnums-request.msg.html

(cl:defclass <Addnums-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass Addnums-request (<Addnums-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Addnums-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Addnums-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name learning_communication-srv:<Addnums-request> is deprecated: use learning_communication-srv:Addnums-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <Addnums-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learning_communication-srv:a-val is deprecated.  Use learning_communication-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <Addnums-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learning_communication-srv:b-val is deprecated.  Use learning_communication-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Addnums-request>) ostream)
  "Serializes a message object of type '<Addnums-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Addnums-request>) istream)
  "Deserializes a message object of type '<Addnums-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Addnums-request>)))
  "Returns string type for a service object of type '<Addnums-request>"
  "learning_communication/AddnumsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Addnums-request)))
  "Returns string type for a service object of type 'Addnums-request"
  "learning_communication/AddnumsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Addnums-request>)))
  "Returns md5sum for a message object of type '<Addnums-request>"
  "f1cb8f566c11d405aa88b8f8cec18e85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Addnums-request)))
  "Returns md5sum for a message object of type 'Addnums-request"
  "f1cb8f566c11d405aa88b8f8cec18e85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Addnums-request>)))
  "Returns full string definition for message of type '<Addnums-request>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Addnums-request)))
  "Returns full string definition for message of type 'Addnums-request"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Addnums-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Addnums-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Addnums-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude Addnums-response.msg.html

(cl:defclass <Addnums-response> (roslisp-msg-protocol:ros-message)
  ((c
    :reader c
    :initarg :c
    :type cl:integer
    :initform 0))
)

(cl:defclass Addnums-response (<Addnums-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Addnums-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Addnums-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name learning_communication-srv:<Addnums-response> is deprecated: use learning_communication-srv:Addnums-response instead.")))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <Addnums-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learning_communication-srv:c-val is deprecated.  Use learning_communication-srv:c instead.")
  (c m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Addnums-response>) ostream)
  "Serializes a message object of type '<Addnums-response>"
  (cl:let* ((signed (cl:slot-value msg 'c)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Addnums-response>) istream)
  "Deserializes a message object of type '<Addnums-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'c) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Addnums-response>)))
  "Returns string type for a service object of type '<Addnums-response>"
  "learning_communication/AddnumsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Addnums-response)))
  "Returns string type for a service object of type 'Addnums-response"
  "learning_communication/AddnumsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Addnums-response>)))
  "Returns md5sum for a message object of type '<Addnums-response>"
  "f1cb8f566c11d405aa88b8f8cec18e85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Addnums-response)))
  "Returns md5sum for a message object of type 'Addnums-response"
  "f1cb8f566c11d405aa88b8f8cec18e85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Addnums-response>)))
  "Returns full string definition for message of type '<Addnums-response>"
  (cl:format cl:nil "int64 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Addnums-response)))
  "Returns full string definition for message of type 'Addnums-response"
  (cl:format cl:nil "int64 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Addnums-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Addnums-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Addnums-response
    (cl:cons ':c (c msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Addnums)))
  'Addnums-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Addnums)))
  'Addnums-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Addnums)))
  "Returns string type for a service object of type '<Addnums>"
  "learning_communication/Addnums")