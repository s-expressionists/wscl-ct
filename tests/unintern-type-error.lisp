(ql:quickload :wscl-ct)


(defun one (object1 object2)
  (declare (optimize (safety 3)))
  (unintern object1 object2))


(wscl-ct:record-eval
  (one 234 "CL-USER")
  (one 'a 234))

