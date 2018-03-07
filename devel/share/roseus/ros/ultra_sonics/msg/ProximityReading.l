;; Auto-generated. Do not edit!


(when (boundp 'ultra_sonics::ProximityReading)
  (if (not (find-package "ULTRA_SONICS"))
    (make-package "ULTRA_SONICS"))
  (shadow 'ProximityReading (find-package "ULTRA_SONICS")))
(unless (find-package "ULTRA_SONICS::PROXIMITYREADING")
  (make-package "ULTRA_SONICS::PROXIMITYREADING"))

(in-package "ROS")
;;//! \htmlinclude ProximityReading.msg.html


(defclass ultra_sonics::ProximityReading
  :super ros::object
  :slots (_x_rotation _y_rotation _distance _accuracy ))

(defmethod ultra_sonics::ProximityReading
  (:init
   (&key
    ((:x_rotation __x_rotation) 0)
    ((:y_rotation __y_rotation) 0)
    ((:distance __distance) 0.0)
    ((:accuracy __accuracy) 0.0)
    )
   (send-super :init)
   (setq _x_rotation (round __x_rotation))
   (setq _y_rotation (round __y_rotation))
   (setq _distance (float __distance))
   (setq _accuracy (float __accuracy))
   self)
  (:x_rotation
   (&optional __x_rotation)
   (if __x_rotation (setq _x_rotation __x_rotation)) _x_rotation)
  (:y_rotation
   (&optional __y_rotation)
   (if __y_rotation (setq _y_rotation __y_rotation)) _y_rotation)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:accuracy
   (&optional __accuracy)
   (if __accuracy (setq _accuracy __accuracy)) _accuracy)
  (:serialization-length
   ()
   (+
    ;; int16 _x_rotation
    2
    ;; int16 _y_rotation
    2
    ;; float32 _distance
    4
    ;; float32 _accuracy
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _x_rotation
       (write-word _x_rotation s)
     ;; int16 _y_rotation
       (write-word _y_rotation s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accuracy
       (sys::poke _accuracy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x_rotation
     (setq _x_rotation (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y_rotation
     (setq _y_rotation (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accuracy
     (setq _accuracy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ultra_sonics::ProximityReading :md5sum-) "dbb137e6f965ad94062061ffcffb2bb9")
(setf (get ultra_sonics::ProximityReading :datatype-) "ultra_sonics/ProximityReading")
(setf (get ultra_sonics::ProximityReading :definition-)
      "int16 x_rotation
int16 y_rotation
float32 distance
float32 accuracy
")



(provide :ultra_sonics/ProximityReading "dbb137e6f965ad94062061ffcffb2bb9")


