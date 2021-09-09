(ql:quickload :wscl-ct)

(defun one (object)
  (declare (optimize (safety 3)))
  (aref object 0 0))

(defun two (object)
  (declare (optimize (safety 3)))
  (setf (aref object 0 0) 345))

(wscl-ct:record-eval
  (one (make-array 1 :initial-element nil))
  (two (make-array 1 :initial-element nil)))
