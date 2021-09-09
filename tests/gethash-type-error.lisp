(ql:quickload :wscl-ct)


(defun one (object)
  (declare (optimize (safety 3)))
  (gethash 345 object))


(wscl-ct:record-eval
  (one 234))

