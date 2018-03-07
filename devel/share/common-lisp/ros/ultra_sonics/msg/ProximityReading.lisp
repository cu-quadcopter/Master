; Auto-generated. Do not edit!


(cl:in-package ultra_sonics-msg)


;//! \htmlinclude ProximityReading.msg.html

(cl:defclass <ProximityReading> (roslisp-msg-protocol:ros-message)
  ((x_rotation
    :reader x_rotation
    :initarg :x_rotation
    :type cl:fixnum
    :initform 0)
   (y_rotation
    :reader y_rotation
    :initarg :y_rotation
    :type cl:fixnum
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (accuracy
    :reader accuracy
    :initarg :accuracy
    :type cl:float
    :initform 0.0))
)

(cl:defclass ProximityReading (<ProximityReading>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProximityReading>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProximityReading)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ultra_sonics-msg:<ProximityReading> is deprecated: use ultra_sonics-msg:ProximityReading instead.")))

(cl:ensure-generic-function 'x_rotation-val :lambda-list '(m))
(cl:defmethod x_rotation-val ((m <ProximityReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ultra_sonics-msg:x_rotation-val is deprecated.  Use ultra_sonics-msg:x_rotation instead.")
  (x_rotation m))

(cl:ensure-generic-function 'y_rotation-val :lambda-list '(m))
(cl:defmethod y_rotation-val ((m <ProximityReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ultra_sonics-msg:y_rotation-val is deprecated.  Use ultra_sonics-msg:y_rotation instead.")
  (y_rotation m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <ProximityReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ultra_sonics-msg:distance-val is deprecated.  Use ultra_sonics-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'accuracy-val :lambda-list '(m))
(cl:defmethod accuracy-val ((m <ProximityReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ultra_sonics-msg:accuracy-val is deprecated.  Use ultra_sonics-msg:accuracy instead.")
  (accuracy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProximityReading>) ostream)
  "Serializes a message object of type '<ProximityReading>"
  (cl:let* ((signed (cl:slot-value msg 'x_rotation)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y_rotation)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accuracy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProximityReading>) istream)
  "Deserializes a message object of type '<ProximityReading>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_rotation) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_rotation) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accuracy) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProximityReading>)))
  "Returns string type for a message object of type '<ProximityReading>"
  "ultra_sonics/ProximityReading")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProximityReading)))
  "Returns string type for a message object of type 'ProximityReading"
  "ultra_sonics/ProximityReading")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProximityReading>)))
  "Returns md5sum for a message object of type '<ProximityReading>"
  "dbb137e6f965ad94062061ffcffb2bb9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProximityReading)))
  "Returns md5sum for a message object of type 'ProximityReading"
  "dbb137e6f965ad94062061ffcffb2bb9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProximityReading>)))
  "Returns full string definition for message of type '<ProximityReading>"
  (cl:format cl:nil "int16 x_rotation~%int16 y_rotation~%float32 distance~%float32 accuracy~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProximityReading)))
  "Returns full string definition for message of type 'ProximityReading"
  (cl:format cl:nil "int16 x_rotation~%int16 y_rotation~%float32 distance~%float32 accuracy~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProximityReading>))
  (cl:+ 0
     2
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProximityReading>))
  "Converts a ROS message object to a list"
  (cl:list 'ProximityReading
    (cl:cons ':x_rotation (x_rotation msg))
    (cl:cons ':y_rotation (y_rotation msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':accuracy (accuracy msg))
))
