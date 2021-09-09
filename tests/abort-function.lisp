(ql:quickload :wscl-ct)

(defun one ()
  (restart-bind ((abort (lambda ())))
    (abort)))

(wscl-ct:record-eval
  (one))

