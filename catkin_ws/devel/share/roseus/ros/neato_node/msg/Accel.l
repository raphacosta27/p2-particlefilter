;; Auto-generated. Do not edit!


(when (boundp 'neato_node::Accel)
  (if (not (find-package "NEATO_NODE"))
    (make-package "NEATO_NODE"))
  (shadow 'Accel (find-package "NEATO_NODE")))
(unless (find-package "NEATO_NODE::ACCEL")
  (make-package "NEATO_NODE::ACCEL"))

(in-package "ROS")
;;//! \htmlinclude Accel.msg.html


(defclass neato_node::Accel
  :super ros::object
  :slots (_accelXInG _accelYInG _accelZInG ))

(defmethod neato_node::Accel
  (:init
   (&key
    ((:accelXInG __accelXInG) 0.0)
    ((:accelYInG __accelYInG) 0.0)
    ((:accelZInG __accelZInG) 0.0)
    )
   (send-super :init)
   (setq _accelXInG (float __accelXInG))
   (setq _accelYInG (float __accelYInG))
   (setq _accelZInG (float __accelZInG))
   self)
  (:accelXInG
   (&optional __accelXInG)
   (if __accelXInG (setq _accelXInG __accelXInG)) _accelXInG)
  (:accelYInG
   (&optional __accelYInG)
   (if __accelYInG (setq _accelYInG __accelYInG)) _accelYInG)
  (:accelZInG
   (&optional __accelZInG)
   (if __accelZInG (setq _accelZInG __accelZInG)) _accelZInG)
  (:serialization-length
   ()
   (+
    ;; float64 _accelXInG
    8
    ;; float64 _accelYInG
    8
    ;; float64 _accelZInG
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _accelXInG
       (sys::poke _accelXInG (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _accelYInG
       (sys::poke _accelYInG (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _accelZInG
       (sys::poke _accelZInG (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _accelXInG
     (setq _accelXInG (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _accelYInG
     (setq _accelYInG (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _accelZInG
     (setq _accelZInG (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get neato_node::Accel :md5sum-) "207a3851a50869ae8ce637885057d51b")
(setf (get neato_node::Accel :datatype-) "neato_node/Accel")
(setf (get neato_node::Accel :definition-)
      "float64 accelXInG
float64 accelYInG
float64 accelZInG

")



(provide :neato_node/Accel "207a3851a50869ae8ce637885057d51b")


