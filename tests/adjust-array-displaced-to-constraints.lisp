(ql:quickload :wscl-ct)


(defun one ()
  (adjust-array (make-array 3 :initial-element 1 :adjustable t) 4
                :displaced-to nil :initial-element 2))

(defun two ()
  (adjust-array (make-array 3 :initial-element 1 :adjustable t) 4
                :displaced-to nil :initial-contents '(2 2 2 2)))


(defun three ()
  (adjust-array (make-array 3 :initial-element 1 :adjustable t) 4
                :displaced-to nil :displaced-index-offset 1))

(wscl-ct:record-eval
  (one)
  (two)
  (three))
