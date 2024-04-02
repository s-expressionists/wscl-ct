(asdf:defsystem #:wscl-ct
  :description "Compliance testing for WSCL"
  :author "Tarn W. Burton"
  :license "MIT"
  :depends-on (#:closer-mop)
  :components
    ((:module code
      :serial t
      :components
        ((:file "packages")
         (:file "interface")))))
