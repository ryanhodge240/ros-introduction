; Auto-generated. Do not edit!


(cl:in-package ryans_package-msg)


;//! \htmlinclude CommandDrive.msg.html

(cl:defclass <CommandDrive> (roslisp-msg-protocol:ros-message)
  ((left_front_vel
    :reader left_front_vel
    :initarg :left_front_vel
    :type cl:float
    :initform 0.0)
   (left_middle_vel
    :reader left_middle_vel
    :initarg :left_middle_vel
    :type cl:float
    :initform 0.0)
   (left_back_vel
    :reader left_back_vel
    :initarg :left_back_vel
    :type cl:float
    :initform 0.0)
   (right_front_vel
    :reader right_front_vel
    :initarg :right_front_vel
    :type cl:float
    :initform 0.0)
   (right_middle_vel
    :reader right_middle_vel
    :initarg :right_middle_vel
    :type cl:float
    :initform 0.0)
   (right_back_vel
    :reader right_back_vel
    :initarg :right_back_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass CommandDrive (<CommandDrive>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandDrive>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandDrive)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ryans_package-msg:<CommandDrive> is deprecated: use ryans_package-msg:CommandDrive instead.")))

(cl:ensure-generic-function 'left_front_vel-val :lambda-list '(m))
(cl:defmethod left_front_vel-val ((m <CommandDrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ryans_package-msg:left_front_vel-val is deprecated.  Use ryans_package-msg:left_front_vel instead.")
  (left_front_vel m))

(cl:ensure-generic-function 'left_middle_vel-val :lambda-list '(m))
(cl:defmethod left_middle_vel-val ((m <CommandDrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ryans_package-msg:left_middle_vel-val is deprecated.  Use ryans_package-msg:left_middle_vel instead.")
  (left_middle_vel m))

(cl:ensure-generic-function 'left_back_vel-val :lambda-list '(m))
(cl:defmethod left_back_vel-val ((m <CommandDrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ryans_package-msg:left_back_vel-val is deprecated.  Use ryans_package-msg:left_back_vel instead.")
  (left_back_vel m))

(cl:ensure-generic-function 'right_front_vel-val :lambda-list '(m))
(cl:defmethod right_front_vel-val ((m <CommandDrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ryans_package-msg:right_front_vel-val is deprecated.  Use ryans_package-msg:right_front_vel instead.")
  (right_front_vel m))

(cl:ensure-generic-function 'right_middle_vel-val :lambda-list '(m))
(cl:defmethod right_middle_vel-val ((m <CommandDrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ryans_package-msg:right_middle_vel-val is deprecated.  Use ryans_package-msg:right_middle_vel instead.")
  (right_middle_vel m))

(cl:ensure-generic-function 'right_back_vel-val :lambda-list '(m))
(cl:defmethod right_back_vel-val ((m <CommandDrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ryans_package-msg:right_back_vel-val is deprecated.  Use ryans_package-msg:right_back_vel instead.")
  (right_back_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandDrive>) ostream)
  "Serializes a message object of type '<CommandDrive>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_front_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_middle_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_back_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_front_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_middle_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_back_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandDrive>) istream)
  "Deserializes a message object of type '<CommandDrive>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_front_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_middle_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_back_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_front_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_middle_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_back_vel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandDrive>)))
  "Returns string type for a message object of type '<CommandDrive>"
  "ryans_package/CommandDrive")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandDrive)))
  "Returns string type for a message object of type 'CommandDrive"
  "ryans_package/CommandDrive")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandDrive>)))
  "Returns md5sum for a message object of type '<CommandDrive>"
  "93c68ee77a1987ff55cfdac06c04c042")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandDrive)))
  "Returns md5sum for a message object of type 'CommandDrive"
  "93c68ee77a1987ff55cfdac06c04c042")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandDrive>)))
  "Returns full string definition for message of type '<CommandDrive>"
  (cl:format cl:nil "# drive motors, velocity in rad/s~%float64 left_front_vel~%float64 left_middle_vel~%float64 left_back_vel~%float64 right_front_vel~%float64 right_middle_vel~%float64 right_back_vel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandDrive)))
  "Returns full string definition for message of type 'CommandDrive"
  (cl:format cl:nil "# drive motors, velocity in rad/s~%float64 left_front_vel~%float64 left_middle_vel~%float64 left_back_vel~%float64 right_front_vel~%float64 right_middle_vel~%float64 right_back_vel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandDrive>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandDrive>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandDrive
    (cl:cons ':left_front_vel (left_front_vel msg))
    (cl:cons ':left_middle_vel (left_middle_vel msg))
    (cl:cons ':left_back_vel (left_back_vel msg))
    (cl:cons ':right_front_vel (right_front_vel msg))
    (cl:cons ':right_middle_vel (right_middle_vel msg))
    (cl:cons ':right_back_vel (right_back_vel msg))
))
