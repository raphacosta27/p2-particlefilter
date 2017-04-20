;; Auto-generated. Do not edit!


(when (boundp 'simple_filter::VelocitySimple)
  (if (not (find-package "SIMPLE_FILTER"))
    (make-package "SIMPLE_FILTER"))
  (shadow 'VelocitySimple (find-package "SIMPLE_FILTER")))
(unless (find-package "SIMPLE_FILTER::VELOCITYSIMPLE")
  (make-package "SIMPLE_FILTER::VELOCITYSIMPLE"))

(in-package "ROS")
;;//! \htmlinclude VelocitySimple.msg.html


(defclass simple_filter::VelocitySimple
  :super ros::object
  :slots (_west_to_east_velocity _south_to_north_velocity ))

(defmethod simple_filter::VelocitySimple
  (:init
   (&key
    ((:west_to_east_velocity __west_to_east_velocity) 0.0)
    ((:south_to_north_velocity __south_to_north_velocity) 0.0)
    )
   (send-super :init)
   (setq _west_to_east_velocity (float __west_to_east_velocity))
   (setq _south_to_north_velocity (float __south_to_north_velocity))
   self)
  (:west_to_east_velocity
   (&optional __west_to_east_velocity)
   (if __west_to_east_velocity (setq _west_to_east_velocity __west_to_east_velocity)) _west_to_east_velocity)
  (:south_to_north_velocity
   (&optional __south_to_north_velocity)
   (if __south_to_north_velocity (setq _south_to_north_velocity __south_to_north_velocity)) _south_to_north_velocity)
  (:serialization-length
   ()
   (+
    ;; float64 _west_to_east_velocity
    8
    ;; float64 _south_to_north_velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _west_to_east_velocity
       (sys::poke _west_to_east_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _south_to_north_velocity
       (sys::poke _south_to_north_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _west_to_east_velocity
     (setq _west_to_east_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _south_to_north_velocity
     (setq _south_to_north_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get simple_filter::VelocitySimple :md5sum-) "c2d1fc69ecbb9c4cf4162781c2abe97c")
(setf (get simple_filter::VelocitySimple :datatype-) "simple_filter/VelocitySimple")
(setf (get simple_filter::VelocitySimple :definition-)
      "float64 west_to_east_velocity
float64 south_to_north_velocity
")



(provide :simple_filter/VelocitySimple "c2d1fc69ecbb9c4cf4162781c2abe97c")


