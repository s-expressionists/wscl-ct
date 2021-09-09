(ql:quickload :wscl-ct)

(defun one (object)
  (declare (optimize (safety 3)))
  (clrhash #'print object))

(wscl-ct:record-eval
  (one 234))
