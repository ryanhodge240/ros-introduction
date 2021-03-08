;; Auto-generated. Do not edit!


(when (boundp 'servo_control::Servo)
  (if (not (find-package "SERVO_CONTROL"))
    (make-package "SERVO_CONTROL"))
  (shadow 'Servo (find-package "SERVO_CONTROL")))
(unless (find-package "SERVO_CONTROL::SERVO")
  (make-package "SERVO_CONTROL::SERVO"))

(in-package "ROS")
;;//! \htmlinclude Servo.msg.html


(defclass servo_control::Servo
  :super ros::object
  :slots (_velocity _position ))

(defmethod servo_control::Servo
  (:init
   (&key
    ((:velocity __velocity) 0.0)
    ((:position __position) 0.0)
    )
   (send-super :init)
   (setq _velocity (float __velocity))
   (setq _position (float __position))
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; float64 _velocity
    8
    ;; float64 _position
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position
       (sys::poke _position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position
     (setq _position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get servo_control::Servo :md5sum-) "a872df59b68701da2b59c215ad257f0e")
(setf (get servo_control::Servo :datatype-) "servo_control/Servo")
(setf (get servo_control::Servo :definition-)
      "# Velocity being sent to the servo
float64 velocity
float64 position
")



(provide :servo_control/Servo "a872df59b68701da2b59c215ad257f0e")


