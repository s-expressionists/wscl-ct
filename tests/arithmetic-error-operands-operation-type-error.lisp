(ql:quickload :wscl-ct)

(defun one (object)
  (declare (optimize (safety 3)))
  (arithmetic-error-operands object))

(defun two (object)
  (declare (optimize (safety 3)))
  (arithmetic-error-operation object))

(wscl-ct:record-eval
  (one 234)
  (two 234))
