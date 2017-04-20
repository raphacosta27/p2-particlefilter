; Auto-generated. Do not edit!


(cl:in-package simple_filter-msg)


;//! \htmlinclude OdometrySimple.msg.html

(cl:defclass <OdometrySimple> (roslisp-msg-protocol:ros-message)
  ((west_to_east_position
    :reader west_to_east_position
    :initarg :west_to_east_position
    :type cl:float
    :initform 0.0)
   (south_to_north_position
    :reader south_to_north_position
    :initarg :south_to_north_position
    :type cl:float
    :initform 0.0))
)

(cl:defclass OdometrySimple (<OdometrySimple>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdometrySimple>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdometrySimple)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_filter-msg:<OdometrySimple> is deprecated: use simple_filter-msg:OdometrySimple instead.")))

(cl:ensure-generic-function 'west_to_east_position-val :lambda-list '(m))
(cl:defmethod west_to_east_position-val ((m <OdometrySimple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_filter-msg:west_to_east_position-val is deprecated.  Use simple_filter-msg:west_to_east_position instead.")
  (west_to_east_position m))

(cl:ensure-generic-function 'south_to_north_position-val :lambda-list '(m))
(cl:defmethod south_to_north_position-val ((m <OdometrySimple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_filter-msg:south_to_north_position-val is deprecated.  Use simple_filter-msg:south_to_north_position instead.")
  (south_to_north_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdometrySimple>) ostream)
  "Serializes a message object of type '<OdometrySimple>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'west_to_east_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'south_to_north_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdometrySimple>) istream)
  "Deserializes a message object of type '<OdometrySimple>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'west_to_east_position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'south_to_north_position) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdometrySimple>)))
  "Returns string type for a message object of type '<OdometrySimple>"
  "simple_filter/OdometrySimple")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdometrySimple)))
  "Returns string type for a message object of type 'OdometrySimple"
  "simple_filter/OdometrySimple")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdometrySimple>)))
  "Returns md5sum for a message object of type '<OdometrySimple>"
  "44f4ba1870bd1a40b628235c08560d3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdometrySimple)))
  "Returns md5sum for a message object of type 'OdometrySimple"
  "44f4ba1870bd1a40b628235c08560d3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdometrySimple>)))
  "Returns full string definition for message of type '<OdometrySimple>"
  (cl:format cl:nil "float64 west_to_east_position~%float64 south_to_north_position~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdometrySimple)))
  "Returns full string definition for message of type 'OdometrySimple"
  (cl:format cl:nil "float64 west_to_east_position~%float64 south_to_north_position~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdometrySimple>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdometrySimple>))
  "Converts a ROS message object to a list"
  (cl:list 'OdometrySimple
    (cl:cons ':west_to_east_position (west_to_east_position msg))
    (cl:cons ':south_to_north_position (south_to_north_position msg))
))
