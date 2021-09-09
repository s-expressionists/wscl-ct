(ql:quickload :wscl-ct)


(wscl-ct:record-eval
  (the (values integer &allow-other-keys) 5))
