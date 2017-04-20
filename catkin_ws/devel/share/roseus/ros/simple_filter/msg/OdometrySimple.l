;; Auto-generated. Do not edit!


(when (boundp 'simple_filter::OdometrySimple)
  (if (not (find-package "SIMPLE_FILTER"))
    (make-package "SIMPLE_FILTER"))
  (shadow 'OdometrySimple (find-package "SIMPLE_FILTER")))
(unless (find-package "SIMPLE_FILTER::ODOMETRYSIMPLE")
  (make-package "SIMPLE_FILTER::ODOMETRYSIMPLE"))

(in-package "ROS")
;;//! \htmlinclude OdometrySimple.msg.html


(defclass simple_filter::OdometrySimple
  :super ros::object
  :slots (_west_to_east_position _south_to_north_position ))

(defmethod simple_filter::OdometrySimple
  (:init
   (&key
    ((:west_to_east_position __west_to_east_position) 0.0)
    ((:south_to_north_position __south_to_north_position) 0.0)
    )
   (send-super :init)
   (setq _west_to_east_position (float __west_to_east_position))
   (setq _south_to_north_position (float __south_to_north_position))
   self)
  (:west_to_east_position
   (&optional __west_to_east_position)
   (if __west_to_east_position (setq _west_to_east_position __west_to_east_position)) _west_to_east_position)
  (:south_to_north_position
   (&optional __south_to_north_position)
   (if __south_to_north_position (setq _south_to_north_position __south_to_north_position)) _south_to_north_position)
  (:serialization-length
   ()
   (+
    ;; float64 _west_to_east_position
    8
    ;; float64 _south_to_north_position
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _west_to_east_position
       (sys::poke _west_to_east_position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _south_to_north_position
       (sys::poke _south_to_north_position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _west_to_east_position
     (setq _west_to_east_position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _south_to_north_position
     (setq _south_to_north_position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get simple_filter::OdometrySimple :md5sum-) "44f4ba1870bd1a40b628235c08560d3f")
(setf (get simple_filter::OdometrySimple :datatype-) "simple_filter/OdometrySimple")
(setf (get simple_filter::OdometrySimple :definition-)
      "float64 west_to_east_position
float64 south_to_north_position
")



(provide :simple_filter/OdometrySimple "44f4ba1870bd1a40b628235c08560d3f")


