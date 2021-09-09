(ql:quickload :wscl-ct)


(defun one (object)
  (declare (optimize (safety 3)))
  (cell-error-name object))


(wscl-ct:record-eval
  (one 234))

