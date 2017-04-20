; Auto-generated. Do not edit!


(cl:in-package neato_node-msg)


;//! \htmlinclude Accel.msg.html

(cl:defclass <Accel> (roslisp-msg-protocol:ros-message)
  ((accelXInG
    :reader accelXInG
    :initarg :accelXInG
    :type cl:float
    :initform 0.0)
   (accelYInG
    :reader accelYInG
    :initarg :accelYInG
    :type cl:float
    :initform 0.0)
   (accelZInG
    :reader accelZInG
    :initarg :accelZInG
    :type cl:float
    :initform 0.0))
)

(cl:defclass Accel (<Accel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Accel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Accel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neato_node-msg:<Accel> is deprecated: use neato_node-msg:Accel instead.")))

(cl:ensure-generic-function 'accelXInG-val :lambda-list '(m))
(cl:defmethod accelXInG-val ((m <Accel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato_node-msg:accelXInG-val is deprecated.  Use neato_node-msg:accelXInG instead.")
  (accelXInG m))

(cl:ensure-generic-function 'accelYInG-val :lambda-list '(m))
(cl:defmethod accelYInG-val ((m <Accel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato_node-msg:accelYInG-val is deprecated.  Use neato_node-msg:accelYInG instead.")
  (accelYInG m))

(cl:ensure-generic-function 'accelZInG-val :lambda-list '(m))
(cl:defmethod accelZInG-val ((m <Accel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato_node-msg:accelZInG-val is deprecated.  Use neato_node-msg:accelZInG instead.")
  (accelZInG m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Accel>) ostream)
  "Serializes a message object of type '<Accel>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'accelXInG))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'accelYInG))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'accelZInG))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Accel>) istream)
  "Deserializes a message object of type '<Accel>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accelXInG) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accelYInG) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accelZInG) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Accel>)))
  "Returns string type for a message object of type '<Accel>"
  "neato_node/Accel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Accel)))
  "Returns string type for a message object of type 'Accel"
  "neato_node/Accel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Accel>)))
  "Returns md5sum for a message object of type '<Accel>"
  "207a3851a50869ae8ce637885057d51b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Accel)))
  "Returns md5sum for a message object of type 'Accel"
  "207a3851a50869ae8ce637885057d51b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Accel>)))
  "Returns full string definition for message of type '<Accel>"
  (cl:format cl:nil "float64 accelXInG~%float64 accelYInG~%float64 accelZInG~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Accel)))
  "Returns full string definition for message of type 'Accel"
  (cl:format cl:nil "float64 accelXInG~%float64 accelYInG~%float64 accelZInG~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Accel>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Accel>))
  "Converts a ROS message object to a list"
  (cl:list 'Accel
    (cl:cons ':accelXInG (accelXInG msg))
    (cl:cons ':accelYInG (accelYInG msg))
    (cl:cons ':accelZInG (accelZInG msg))
))
