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
  :slots (_x_ratation _y_ratation _distance _accuracy ))

(defmethod ultra_sonics::ProximityReading
  (:init
   (&key
    ((:x_ratation __x_ratation) 0)
    ((:y_ratation __y_ratation) 0)
    ((:distance __distance) 0.0)
    ((:accuracy __accuracy) 0.0)
    )
   (send-super :init)
   (setq _x_ratation (round __x_ratation))
   (setq _y_ratation (round __y_ratation))
   (setq _distance (float __distance))
   (setq _accuracy (float __accuracy))
   self)
  (:x_ratation
   (&optional __x_ratation)
   (if __x_ratation (setq _x_ratation __x_ratation)) _x_ratation)
  (:y_ratation
   (&optional __y_ratation)
   (if __y_ratation (setq _y_ratation __y_ratation)) _y_ratation)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:accuracy
   (&optional __accuracy)
   (if __accuracy (setq _accuracy __accuracy)) _accuracy)
  (:serialization-length
   ()
   (+
    ;; int16 _x_ratation
    2
    ;; int16 _y_ratation
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
     ;; int16 _x_ratation
       (write-word _x_ratation s)
     ;; int16 _y_ratation
       (write-word _y_ratation s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accuracy
       (sys::poke _accuracy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x_ratation
     (setq _x_ratation (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y_ratation
     (setq _y_ratation (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accuracy
     (setq _accuracy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ultra_sonics::ProximityReading :md5sum-) "e94f3fd8a5c15e9d20ef07fcc5fd7cf7")
(setf (get ultra_sonics::ProximityReading :datatype-) "ultra_sonics/ProximityReading")
(setf (get ultra_sonics::ProximityReading :definition-)
      "int16 x_ratation
int16 y_ratation
float32 distance
float32 accuracy
")



(provide :ultra_sonics/ProximityReading "e94f3fd8a5c15e9d20ef07fcc5fd7cf7")


