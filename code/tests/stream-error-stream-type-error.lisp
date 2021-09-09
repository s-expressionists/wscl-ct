(in-package #:wscl-ct/tests)


(defun stream-error-stream-type-error ()
  (flet ((one (object)
           (declare (optimize (safety 3)))
           (type-error-datum object)))
    (wscl-ct:record-eval
      (one 234))))

