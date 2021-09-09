(ql:quickload :wscl-ct)

(defun one (object)
  (declare (optimize (safety 3)))
  (aref object 0))

(defun two (object)
  (declare (optimize (safety 3)))
  (setf (aref object 0) 345))

(wscl-ct:record-eval
  (one 234)
  (two 234))
