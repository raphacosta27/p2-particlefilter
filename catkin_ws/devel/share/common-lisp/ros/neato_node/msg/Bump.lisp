; Auto-generated. Do not edit!


(cl:in-package neato_node-msg)


;//! \htmlinclude Bump.msg.html

(cl:defclass <Bump> (roslisp-msg-protocol:ros-message)
  ((leftFront
    :reader leftFront
    :initarg :leftFront
    :type cl:fixnum
    :initform 0)
   (leftSide
    :reader leftSide
    :initarg :leftSide
    :type cl:fixnum
    :initform 0)
   (rightFront
    :reader rightFront
    :initarg :rightFront
    :type cl:fixnum
    :initform 0)
   (rightSide
    :reader rightSide
    :initarg :rightSide
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Bump (<Bump>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bump>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bump)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neato_node-msg:<Bump> is deprecated: use neato_node-msg:Bump instead.")))

(cl:ensure-generic-function 'leftFront-val :lambda-list '(m))
(cl:defmethod leftFront-val ((m <Bump>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato_node-msg:leftFront-val is deprecated.  Use neato_node-msg:leftFront instead.")
  (leftFront m))

(cl:ensure-generic-function 'leftSide-val :lambda-list '(m))
(cl:defmethod leftSide-val ((m <Bump>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato_node-msg:leftSide-val is deprecated.  Use neato_node-msg:leftSide instead.")
  (leftSide m))

(cl:ensure-generic-function 'rightFront-val :lambda-list '(m))
(cl:defmethod rightFront-val ((m <Bump>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato_node-msg:rightFront-val is deprecated.  Use neato_node-msg:rightFront instead.")
  (rightFront m))

(cl:ensure-generic-function 'rightSide-val :lambda-list '(m))
(cl:defmethod rightSide-val ((m <Bump>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato_node-msg:rightSide-val is deprecated.  Use neato_node-msg:rightSide instead.")
  (rightSide m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bump>) ostream)
  "Serializes a message object of type '<Bump>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leftFront)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leftSide)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rightFront)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rightSide)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bump>) istream)
  "Deserializes a message object of type '<Bump>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leftFront)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leftSide)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rightFront)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rightSide)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bump>)))
  "Returns string type for a message object of type '<Bump>"
  "neato_node/Bump")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bump)))
  "Returns string type for a message object of type 'Bump"
  "neato_node/Bump")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bump>)))
  "Returns md5sum for a message object of type '<Bump>"
  "459d87767ce0f2ebdc162046e9ad2c13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bump)))
  "Returns md5sum for a message object of type 'Bump"
  "459d87767ce0f2ebdc162046e9ad2c13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bump>)))
  "Returns full string definition for message of type '<Bump>"
  (cl:format cl:nil "# This represents the bump sensor data from the Neato ~%~%uint8 leftFront~%uint8 leftSide~%uint8 rightFront~%uint8 rightSide ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bump)))
  "Returns full string definition for message of type 'Bump"
  (cl:format cl:nil "# This represents the bump sensor data from the Neato ~%~%uint8 leftFront~%uint8 leftSide~%uint8 rightFront~%uint8 rightSide ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bump>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bump>))
  "Converts a ROS message object to a list"
  (cl:list 'Bump
    (cl:cons ':leftFront (leftFront msg))
    (cl:cons ':leftSide (leftSide msg))
    (cl:cons ':rightFront (rightFront msg))
    (cl:cons ':rightSide (rightSide msg))
))
