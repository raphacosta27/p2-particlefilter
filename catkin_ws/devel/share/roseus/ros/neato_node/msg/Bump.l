;; Auto-generated. Do not edit!


(when (boundp 'neato_node::Bump)
  (if (not (find-package "NEATO_NODE"))
    (make-package "NEATO_NODE"))
  (shadow 'Bump (find-package "NEATO_NODE")))
(unless (find-package "NEATO_NODE::BUMP")
  (make-package "NEATO_NODE::BUMP"))

(in-package "ROS")
;;//! \htmlinclude Bump.msg.html


(defclass neato_node::Bump
  :super ros::object
  :slots (_leftFront _leftSide _rightFront _rightSide ))

(defmethod neato_node::Bump
  (:init
   (&key
    ((:leftFront __leftFront) 0)
    ((:leftSide __leftSide) 0)
    ((:rightFront __rightFront) 0)
    ((:rightSide __rightSide) 0)
    )
   (send-super :init)
   (setq _leftFront (round __leftFront))
   (setq _leftSide (round __leftSide))
   (setq _rightFront (round __rightFront))
   (setq _rightSide (round __rightSide))
   self)
  (:leftFront
   (&optional __leftFront)
   (if __leftFront (setq _leftFront __leftFront)) _leftFront)
  (:leftSide
   (&optional __leftSide)
   (if __leftSide (setq _leftSide __leftSide)) _leftSide)
  (:rightFront
   (&optional __rightFront)
   (if __rightFront (setq _rightFront __rightFront)) _rightFront)
  (:rightSide
   (&optional __rightSide)
   (if __rightSide (setq _rightSide __rightSide)) _rightSide)
  (:serialization-length
   ()
   (+
    ;; uint8 _leftFront
    1
    ;; uint8 _leftSide
    1
    ;; uint8 _rightFront
    1
    ;; uint8 _rightSide
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _leftFront
       (write-byte _leftFront s)
     ;; uint8 _leftSide
       (write-byte _leftSide s)
     ;; uint8 _rightFront
       (write-byte _rightFront s)
     ;; uint8 _rightSide
       (write-byte _rightSide s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _leftFront
     (setq _leftFront (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _leftSide
     (setq _leftSide (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rightFront
     (setq _rightFront (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rightSide
     (setq _rightSide (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get neato_node::Bump :md5sum-) "459d87767ce0f2ebdc162046e9ad2c13")
(setf (get neato_node::Bump :datatype-) "neato_node/Bump")
(setf (get neato_node::Bump :definition-)
      "# This represents the bump sensor data from the Neato 

uint8 leftFront
uint8 leftSide
uint8 rightFront
uint8 rightSide 

")



(provide :neato_node/Bump "459d87767ce0f2ebdc162046e9ad2c13")


