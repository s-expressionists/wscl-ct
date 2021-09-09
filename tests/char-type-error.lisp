(ql:quickload :wscl-ct)


(defun one (object)
  (declare (optimize (safety 3)))
  (char object 0))


(defun two (object)
  (declare (optimize (safety 3)))
  (schar object 0))


(wscl-ct:record-eval
  (one 234)
  (two 234))

