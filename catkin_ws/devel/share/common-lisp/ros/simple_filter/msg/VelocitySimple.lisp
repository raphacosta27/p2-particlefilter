; Auto-generated. Do not edit!


(cl:in-package simple_filter-msg)


;//! \htmlinclude VelocitySimple.msg.html

(cl:defclass <VelocitySimple> (roslisp-msg-protocol:ros-message)
  ((west_to_east_velocity
    :reader west_to_east_velocity
    :initarg :west_to_east_velocity
    :type cl:float
    :initform 0.0)
   (south_to_north_velocity
    :reader south_to_north_velocity
    :initarg :south_to_north_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass VelocitySimple (<VelocitySimple>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocitySimple>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocitySimple)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_filter-msg:<VelocitySimple> is deprecated: use simple_filter-msg:VelocitySimple instead.")))

(cl:ensure-generic-function 'west_to_east_velocity-val :lambda-list '(m))
(cl:defmethod west_to_east_velocity-val ((m <VelocitySimple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_filter-msg:west_to_east_velocity-val is deprecated.  Use simple_filter-msg:west_to_east_velocity instead.")
  (west_to_east_velocity m))

(cl:ensure-generic-function 'south_to_north_velocity-val :lambda-list '(m))
(cl:defmethod south_to_north_velocity-val ((m <VelocitySimple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_filter-msg:south_to_north_velocity-val is deprecated.  Use simple_filter-msg:south_to_north_velocity instead.")
  (south_to_north_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocitySimple>) ostream)
  "Serializes a message object of type '<VelocitySimple>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'west_to_east_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'south_to_north_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocitySimple>) istream)
  "Deserializes a message object of type '<VelocitySimple>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'west_to_east_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'south_to_north_velocity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocitySimple>)))
  "Returns string type for a message object of type '<VelocitySimple>"
  "simple_filter/VelocitySimple")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocitySimple)))
  "Returns string type for a message object of type 'VelocitySimple"
  "simple_filter/VelocitySimple")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocitySimple>)))
  "Returns md5sum for a message object of type '<VelocitySimple>"
  "c2d1fc69ecbb9c4cf4162781c2abe97c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocitySimple)))
  "Returns md5sum for a message object of type 'VelocitySimple"
  "c2d1fc69ecbb9c4cf4162781c2abe97c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocitySimple>)))
  "Returns full string definition for message of type '<VelocitySimple>"
  (cl:format cl:nil "float64 west_to_east_velocity~%float64 south_to_north_velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocitySimple)))
  "Returns full string definition for message of type 'VelocitySimple"
  (cl:format cl:nil "float64 west_to_east_velocity~%float64 south_to_north_velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocitySimple>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocitySimple>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocitySimple
    (cl:cons ':west_to_east_velocity (west_to_east_velocity msg))
    (cl:cons ':south_to_north_velocity (south_to_north_velocity msg))
))
