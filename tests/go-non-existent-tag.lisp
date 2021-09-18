(asdf:load-system :wscl-ct)

(defmacro one (go-name tag-name)
  `(locally
     (declare (optimize (safety 3)))
     (tagbody
       (go ,go-name)
      ,tag-name)))


(wscl-ct:record-eval
  (one a a)
  (one a b))
