(ql:quickload :wscl-ct)


(defun one (object1 object2)
  (declare (optimize (safety 3)))
  (find-symbol object1 object2))


(wscl-ct:record-eval
  (one 234 *package*)
  (one "hello" 234))

