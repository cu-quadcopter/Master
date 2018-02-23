;; Auto-generated. Do not edit!


(when (boundp 'ultra_sonics::proximity_reading)
  (if (not (find-package "ULTRA_SONICS"))
    (make-package "ULTRA_SONICS"))
  (shadow 'proximity_reading (find-package "ULTRA_SONICS")))
(unless (find-package "ULTRA_SONICS::PROXIMITY_READING")
  (make-package "ULTRA_SONICS::PROXIMITY_READING"))

(in-package "ROS")
;;//! \htmlinclude proximity_reading.msg.html


(defclass ultra_sonics::proximity_reading
  :super ros::object
  :slots (_x _y _z _distance _accuracy ))

(defmethod ultra_sonics::proximity_reading
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0)
    ((:distance __distance) 0.0)
    ((:accuracy __accuracy) 0.0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (round __z))
   (setq _distance (float __distance))
   (setq _accuracy (float __accuracy))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:accuracy
   (&optional __accuracy)
   (if __accuracy (setq _accuracy __accuracy)) _accuracy)
  (:serialization-length
   ()
   (+
    ;; int16 _x
    2
    ;; int16 _y
    2
    ;; int16 _z
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
     ;; int16 _x
       (write-word _x s)
     ;; int16 _y
       (write-word _y s)
     ;; int16 _z
       (write-word _z s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accuracy
       (sys::poke _accuracy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _z
     (setq _z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accuracy
     (setq _accuracy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ultra_sonics::proximity_reading :md5sum-) "a9c7353d28dec7d7c97f9d50d19e40b5")
(setf (get ultra_sonics::proximity_reading :datatype-) "ultra_sonics/proximity_reading")
(setf (get ultra_sonics::proximity_reading :definition-)
      "int16 x
int16 y
int16 z
float32 distance
float32 accuracy
")



(provide :ultra_sonics/proximity_reading "a9c7353d28dec7d7c97f9d50d19e40b5")


