; Auto-generated. Do not edit!


(cl:in-package ultra_sonics-msg)


;//! \htmlinclude proximity_reading.msg.html

(cl:defclass <proximity_reading> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0)
   (z
    :reader z
    :initarg :z
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

(cl:defclass proximity_reading (<proximity_reading>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <proximity_reading>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'proximity_reading)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ultra_sonics-msg:<proximity_reading> is deprecated: use ultra_sonics-msg:proximity_reading instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <proximity_reading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ultra_sonics-msg:x-val is deprecated.  Use ultra_sonics-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <proximity_reading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ultra_sonics-msg:y-val is deprecated.  Use ultra_sonics-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <proximity_reading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ultra_sonics-msg:z-val is deprecated.  Use ultra_sonics-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <proximity_reading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ultra_sonics-msg:distance-val is deprecated.  Use ultra_sonics-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'accuracy-val :lambda-list '(m))
(cl:defmethod accuracy-val ((m <proximity_reading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ultra_sonics-msg:accuracy-val is deprecated.  Use ultra_sonics-msg:accuracy instead.")
  (accuracy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <proximity_reading>) ostream)
  "Serializes a message object of type '<proximity_reading>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <proximity_reading>) istream)
  "Deserializes a message object of type '<proximity_reading>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<proximity_reading>)))
  "Returns string type for a message object of type '<proximity_reading>"
  "ultra_sonics/proximity_reading")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'proximity_reading)))
  "Returns string type for a message object of type 'proximity_reading"
  "ultra_sonics/proximity_reading")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<proximity_reading>)))
  "Returns md5sum for a message object of type '<proximity_reading>"
  "a9c7353d28dec7d7c97f9d50d19e40b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'proximity_reading)))
  "Returns md5sum for a message object of type 'proximity_reading"
  "a9c7353d28dec7d7c97f9d50d19e40b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<proximity_reading>)))
  "Returns full string definition for message of type '<proximity_reading>"
  (cl:format cl:nil "int16 x~%int16 y~%int16 z~%float32 distance~%float32 accuracy~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'proximity_reading)))
  "Returns full string definition for message of type 'proximity_reading"
  (cl:format cl:nil "int16 x~%int16 y~%int16 z~%float32 distance~%float32 accuracy~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <proximity_reading>))
  (cl:+ 0
     2
     2
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <proximity_reading>))
  "Converts a ROS message object to a list"
  (cl:list 'proximity_reading
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':accuracy (accuracy msg))
))
