(ql:quickload :wscl-ct)

(defun f (x &key k) (declare (optimize safety)) (list x k))

(wscl-ct:record-eval
  (f 'z #*101 'zook :allow-other-keys t))
