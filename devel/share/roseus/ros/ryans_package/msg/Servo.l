;; Auto-generated. Do not edit!


(when (boundp 'ryans_package::Servo)
  (if (not (find-package "RYANS_PACKAGE"))
    (make-package "RYANS_PACKAGE"))
  (shadow 'Servo (find-package "RYANS_PACKAGE")))
(unless (find-package "RYANS_PACKAGE::SERVO")
  (make-package "RYANS_PACKAGE::SERVO"))

(in-package "ROS")
;;//! \htmlinclude Servo.msg.html


(defclass ryans_package::Servo
  :super ros::object
  :slots (_velocity _position ))

(defmethod ryans_package::Servo
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

(setf (get ryans_package::Servo :md5sum-) "a872df59b68701da2b59c215ad257f0e")
(setf (get ryans_package::Servo :datatype-) "ryans_package/Servo")
(setf (get ryans_package::Servo :definition-)
      "# Velocity being sent to the servo
float64 velocity
float64 position
")



(provide :ryans_package/Servo "a872df59b68701da2b59c215ad257f0e")


