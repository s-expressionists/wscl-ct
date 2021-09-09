(asdf:load-system :wscl-ct)


(defun one (object)
  (declare (optimize (safety 3)))
  (type-error-datum object))


(wscl-ct:record-eval
  (one 234))

