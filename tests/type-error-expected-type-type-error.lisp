(asdf:load-system :wscl-ct)


(defun one (object)
  (declare (optimize (safety 3)))
  (type-error-expected-type object))


(wscl-ct:record-eval
  (one 234))

