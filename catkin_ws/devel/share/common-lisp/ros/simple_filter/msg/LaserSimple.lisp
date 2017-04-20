; Auto-generated. Do not edit!


(cl:in-package simple_filter-msg)


;//! \htmlinclude LaserSimple.msg.html

(cl:defclass <LaserSimple> (roslisp-msg-protocol:ros-message)
  ((north_laser
    :reader north_laser
    :initarg :north_laser
    :type cl:float
    :initform 0.0)
   (south_laser
    :reader south_laser
    :initarg :south_laser
    :type cl:float
    :initform 0.0)
   (east_laser
    :reader east_laser
    :initarg :east_laser
    :type cl:float
    :initform 0.0)
   (west_laser
    :reader west_laser
    :initarg :west_laser
    :type cl:float
    :initform 0.0))
)

(cl:defclass LaserSimple (<LaserSimple>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaserSimple>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaserSimple)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simple_filter-msg:<LaserSimple> is deprecated: use simple_filter-msg:LaserSimple instead.")))

(cl:ensure-generic-function 'north_laser-val :lambda-list '(m))
(cl:defmethod north_laser-val ((m <LaserSimple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_filter-msg:north_laser-val is deprecated.  Use simple_filter-msg:north_laser instead.")
  (north_laser m))

(cl:ensure-generic-function 'south_laser-val :lambda-list '(m))
(cl:defmethod south_laser-val ((m <LaserSimple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_filter-msg:south_laser-val is deprecated.  Use simple_filter-msg:south_laser instead.")
  (south_laser m))

(cl:ensure-generic-function 'east_laser-val :lambda-list '(m))
(cl:defmethod east_laser-val ((m <LaserSimple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_filter-msg:east_laser-val is deprecated.  Use simple_filter-msg:east_laser instead.")
  (east_laser m))

(cl:ensure-generic-function 'west_laser-val :lambda-list '(m))
(cl:defmethod west_laser-val ((m <LaserSimple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simple_filter-msg:west_laser-val is deprecated.  Use simple_filter-msg:west_laser instead.")
  (west_laser m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaserSimple>) ostream)
  "Serializes a message object of type '<LaserSimple>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'north_laser))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'south_laser))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'east_laser))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'west_laser))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaserSimple>) istream)
  "Deserializes a message object of type '<LaserSimple>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'north_laser) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'south_laser) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'east_laser) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'west_laser) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaserSimple>)))
  "Returns string type for a message object of type '<LaserSimple>"
  "simple_filter/LaserSimple")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaserSimple)))
  "Returns string type for a message object of type 'LaserSimple"
  "simple_filter/LaserSimple")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaserSimple>)))
  "Returns md5sum for a message object of type '<LaserSimple>"
  "7b8187ec0e932eb25ced46dca14c4680")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaserSimple)))
  "Returns md5sum for a message object of type 'LaserSimple"
  "7b8187ec0e932eb25ced46dca14c4680")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaserSimple>)))
  "Returns full string definition for message of type '<LaserSimple>"
  (cl:format cl:nil "float64 north_laser~%float64 south_laser~%float64 east_laser~%float64 west_laser~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaserSimple)))
  "Returns full string definition for message of type 'LaserSimple"
  (cl:format cl:nil "float64 north_laser~%float64 south_laser~%float64 east_laser~%float64 west_laser~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaserSimple>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaserSimple>))
  "Converts a ROS message object to a list"
  (cl:list 'LaserSimple
    (cl:cons ':north_laser (north_laser msg))
    (cl:cons ':south_laser (south_laser msg))
    (cl:cons ':east_laser (east_laser msg))
    (cl:cons ':west_laser (west_laser msg))
))
