;; Auto-generated. Do not edit!


(when (boundp 'learning_communication::Addnums)
  (if (not (find-package "LEARNING_COMMUNICATION"))
    (make-package "LEARNING_COMMUNICATION"))
  (shadow 'Addnums (find-package "LEARNING_COMMUNICATION")))
(unless (find-package "LEARNING_COMMUNICATION::ADDNUMS")
  (make-package "LEARNING_COMMUNICATION::ADDNUMS"))
(unless (find-package "LEARNING_COMMUNICATION::ADDNUMSREQUEST")
  (make-package "LEARNING_COMMUNICATION::ADDNUMSREQUEST"))
(unless (find-package "LEARNING_COMMUNICATION::ADDNUMSRESPONSE")
  (make-package "LEARNING_COMMUNICATION::ADDNUMSRESPONSE"))

(in-package "ROS")





(defclass learning_communication::AddnumsRequest
  :super ros::object
  :slots (_a _b ))

(defmethod learning_communication::AddnumsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass learning_communication::AddnumsResponse
  :super ros::object
  :slots (_c ))

(defmethod learning_communication::AddnumsResponse
  (:init
   (&key
    ((:c __c) 0)
    )
   (send-super :init)
   (setq _c (round __c))
   self)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:serialization-length
   ()
   (+
    ;; int64 _c
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _c
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _c (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _c) (= (length (_c . bv)) 2)) ;; bignum
              (write-long (ash (elt (_c . bv) 0) 0) s)
              (write-long (ash (elt (_c . bv) 1) -1) s))
             ((and (class _c) (= (length (_c . bv)) 1)) ;; big1
              (write-long (elt (_c . bv) 0) s)
              (write-long (if (>= _c 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _c s)(write-long (if (>= _c 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _c
#+(or :alpha :irix6 :x86_64)
      (setf _c (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _c (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass learning_communication::Addnums
  :super ros::object
  :slots ())

(setf (get learning_communication::Addnums :md5sum-) "f1cb8f566c11d405aa88b8f8cec18e85")
(setf (get learning_communication::Addnums :datatype-) "learning_communication/Addnums")
(setf (get learning_communication::Addnums :request) learning_communication::AddnumsRequest)
(setf (get learning_communication::Addnums :response) learning_communication::AddnumsResponse)

(defmethod learning_communication::AddnumsRequest
  (:response () (instance learning_communication::AddnumsResponse :init)))

(setf (get learning_communication::AddnumsRequest :md5sum-) "f1cb8f566c11d405aa88b8f8cec18e85")
(setf (get learning_communication::AddnumsRequest :datatype-) "learning_communication/AddnumsRequest")
(setf (get learning_communication::AddnumsRequest :definition-)
      "int64 a
int64 b
---
int64 c
")

(setf (get learning_communication::AddnumsResponse :md5sum-) "f1cb8f566c11d405aa88b8f8cec18e85")
(setf (get learning_communication::AddnumsResponse :datatype-) "learning_communication/AddnumsResponse")
(setf (get learning_communication::AddnumsResponse :definition-)
      "int64 a
int64 b
---
int64 c
")



(provide :learning_communication/Addnums "f1cb8f566c11d405aa88b8f8cec18e85")


