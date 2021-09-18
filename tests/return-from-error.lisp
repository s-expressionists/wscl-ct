(asdf:load-system :wscl-ct)

(defmacro one (block-name return-name)
  `(locally
     (declare (optimize (safety 3)))
     (block ,block-name
       (return-from ,return-name))))


(wscl-ct:record-eval
  (one a a)
  (one a b))
