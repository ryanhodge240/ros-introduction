;; Auto-generated. Do not edit!


(when (boundp 'servo_control::CommandDrive)
  (if (not (find-package "SERVO_CONTROL"))
    (make-package "SERVO_CONTROL"))
  (shadow 'CommandDrive (find-package "SERVO_CONTROL")))
(unless (find-package "SERVO_CONTROL::COMMANDDRIVE")
  (make-package "SERVO_CONTROL::COMMANDDRIVE"))

(in-package "ROS")
;;//! \htmlinclude CommandDrive.msg.html


(defclass servo_control::CommandDrive
  :super ros::object
  :slots (_left_front_vel _left_middle_vel _left_back_vel _right_front_vel _right_middle_vel _right_back_vel ))

(defmethod servo_control::CommandDrive
  (:init
   (&key
    ((:left_front_vel __left_front_vel) 0.0)
    ((:left_middle_vel __left_middle_vel) 0.0)
    ((:left_back_vel __left_back_vel) 0.0)
    ((:right_front_vel __right_front_vel) 0.0)
    ((:right_middle_vel __right_middle_vel) 0.0)
    ((:right_back_vel __right_back_vel) 0.0)
    )
   (send-super :init)
   (setq _left_front_vel (float __left_front_vel))
   (setq _left_middle_vel (float __left_middle_vel))
   (setq _left_back_vel (float __left_back_vel))
   (setq _right_front_vel (float __right_front_vel))
   (setq _right_middle_vel (float __right_middle_vel))
   (setq _right_back_vel (float __right_back_vel))
   self)
  (:left_front_vel
   (&optional __left_front_vel)
   (if __left_front_vel (setq _left_front_vel __left_front_vel)) _left_front_vel)
  (:left_middle_vel
   (&optional __left_middle_vel)
   (if __left_middle_vel (setq _left_middle_vel __left_middle_vel)) _left_middle_vel)
  (:left_back_vel
   (&optional __left_back_vel)
   (if __left_back_vel (setq _left_back_vel __left_back_vel)) _left_back_vel)
  (:right_front_vel
   (&optional __right_front_vel)
   (if __right_front_vel (setq _right_front_vel __right_front_vel)) _right_front_vel)
  (:right_middle_vel
   (&optional __right_middle_vel)
   (if __right_middle_vel (setq _right_middle_vel __right_middle_vel)) _right_middle_vel)
  (:right_back_vel
   (&optional __right_back_vel)
   (if __right_back_vel (setq _right_back_vel __right_back_vel)) _right_back_vel)
  (:serialization-length
   ()
   (+
    ;; float64 _left_front_vel
    8
    ;; float64 _left_middle_vel
    8
    ;; float64 _left_back_vel
    8
    ;; float64 _right_front_vel
    8
    ;; float64 _right_middle_vel
    8
    ;; float64 _right_back_vel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _left_front_vel
       (sys::poke _left_front_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _left_middle_vel
       (sys::poke _left_middle_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _left_back_vel
       (sys::poke _left_back_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_front_vel
       (sys::poke _right_front_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_middle_vel
       (sys::poke _right_middle_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_back_vel
       (sys::poke _right_back_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _left_front_vel
     (setq _left_front_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _left_middle_vel
     (setq _left_middle_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _left_back_vel
     (setq _left_back_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_front_vel
     (setq _right_front_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_middle_vel
     (setq _right_middle_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_back_vel
     (setq _right_back_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get servo_control::CommandDrive :md5sum-) "93c68ee77a1987ff55cfdac06c04c042")
(setf (get servo_control::CommandDrive :datatype-) "servo_control/CommandDrive")
(setf (get servo_control::CommandDrive :definition-)
      "# drive motors, velocity in rad/s
float64 left_front_vel
float64 left_middle_vel
float64 left_back_vel
float64 right_front_vel
float64 right_middle_vel
float64 right_back_vel
")



(provide :servo_control/CommandDrive "93c68ee77a1987ff55cfdac06c04c042")


