;; Auto-generated. Do not edit!


(when (boundp 'simple_filter::LaserSimple)
  (if (not (find-package "SIMPLE_FILTER"))
    (make-package "SIMPLE_FILTER"))
  (shadow 'LaserSimple (find-package "SIMPLE_FILTER")))
(unless (find-package "SIMPLE_FILTER::LASERSIMPLE")
  (make-package "SIMPLE_FILTER::LASERSIMPLE"))

(in-package "ROS")
;;//! \htmlinclude LaserSimple.msg.html


(defclass simple_filter::LaserSimple
  :super ros::object
  :slots (_north_laser _south_laser _east_laser _west_laser ))

(defmethod simple_filter::LaserSimple
  (:init
   (&key
    ((:north_laser __north_laser) 0.0)
    ((:south_laser __south_laser) 0.0)
    ((:east_laser __east_laser) 0.0)
    ((:west_laser __west_laser) 0.0)
    )
   (send-super :init)
   (setq _north_laser (float __north_laser))
   (setq _south_laser (float __south_laser))
   (setq _east_laser (float __east_laser))
   (setq _west_laser (float __west_laser))
   self)
  (:north_laser
   (&optional __north_laser)
   (if __north_laser (setq _north_laser __north_laser)) _north_laser)
  (:south_laser
   (&optional __south_laser)
   (if __south_laser (setq _south_laser __south_laser)) _south_laser)
  (:east_laser
   (&optional __east_laser)
   (if __east_laser (setq _east_laser __east_laser)) _east_laser)
  (:west_laser
   (&optional __west_laser)
   (if __west_laser (setq _west_laser __west_laser)) _west_laser)
  (:serialization-length
   ()
   (+
    ;; float64 _north_laser
    8
    ;; float64 _south_laser
    8
    ;; float64 _east_laser
    8
    ;; float64 _west_laser
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _north_laser
       (sys::poke _north_laser (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _south_laser
       (sys::poke _south_laser (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _east_laser
       (sys::poke _east_laser (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _west_laser
       (sys::poke _west_laser (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _north_laser
     (setq _north_laser (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _south_laser
     (setq _south_laser (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _east_laser
     (setq _east_laser (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _west_laser
     (setq _west_laser (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get simple_filter::LaserSimple :md5sum-) "7b8187ec0e932eb25ced46dca14c4680")
(setf (get simple_filter::LaserSimple :datatype-) "simple_filter/LaserSimple")
(setf (get simple_filter::LaserSimple :definition-)
      "float64 north_laser
float64 south_laser
float64 east_laser
float64 west_laser
")



(provide :simple_filter/LaserSimple "7b8187ec0e932eb25ced46dca14c4680")


