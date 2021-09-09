(ql:quickload :wscl-ct)

(defun adjoin/t ()
  (adjoin 1 '(1 2 3) :test #'eql :test-not #'eql))

(defun assoc/t ()
  (assoc 1 '((1 . a) (2 . b) (3 . c)) :test #'eql :test-not #'eql))

(defun count/t ()
  (count 1 '(1 2 3) :test #'eql :test-not #'eql))

(defun find/t ()
  (find 1 '(1 2 3) :test #'eql :test-not #'eql))

(defun intersection/t ()
  (intersection '(1 2 3) '(3 4 5) :test #'eql :test-not #'eql))

(defun nintersection/t ()
  (nintersection (list 1 2 3) (list 3 4 5) :test #'eql :test-not #'eql))

(defun member/t ()
  (member 1 '(1 2 3) :test #'eql :test-not #'eql))

(defun mismatch/t ()
  (mismatch '((1 . a) (2 . b) (3 . c)) '(1 2 3) :test #'eql :test-not #'eql))

(defun position/t ()
  (position 1 '(1 2 3) :test #'eql :test-not #'eql))

(defun rassoc/t ()
  (rassoc 1 '((1 . a) (2 . b) (3 . c)) :test #'eql :test-not #'eql))

(defun remove/t ()
  (remove 1 '(1 2 3) :test #'eql :test-not #'eql))

(defun delete/t ()
  (delete 1 (list 1 2 3) :test #'eql :test-not #'eql))

(defun remove-duplicates/t ()
  (remove-duplicates '(1 2 1 3) :test #'eql :test-not #'eql))

(defun delete-duplicates/t ()
  (delete-duplicates (list 1 2 1 3) :test #'eql :test-not #'eql))

(defun search/t ()
  (search '(1 2) '(1 2 3) :test #'eql :test-not #'eql))

(defun set-difference/t ()
  (set-difference '(1 2 3) '(3 4 5) :test #'eql :test-not #'eql))

(defun nset-difference/t ()
  (nset-difference (list 1 2 3) (list 3 4 5) :test #'eql :test-not #'eql))

(defun set-exclusive-or/t ()
  (set-exclusive-or '(1 2 3) '(3 4 5) :test #'eql :test-not #'eql))

(defun nset-exclusive-or/t ()
  (nset-exclusive-or (list 1 2 3) (list 3 4 5) :test #'eql :test-not #'eql))

(defun sublis/t ()
  (sublis '((1 . a) (2 . b) (3 . c)) '(1 2 3) :test #'eql :test-not #'eql))

(defun nsublis/t ()
  (sublis '((1 . a) (2 . b) (3 . c)) (list 1 2 3) :test #'eql :test-not #'eql))

(defun subsetp/t ()
  (subsetp '(2 3) '(1 2 3) :test #'eql :test-not #'eql))

(defun subst/t ()
  (subst 1 2 '(1 2 3) :test #'eql :test-not #'eql))

(defun nsubst/t ()
  (nsubst 1 2 (list 1 2 3) :test #'eql :test-not #'eql))

(defun substitute/t ()
  (substitute 1 2 '(1 2 3) :test #'eql :test-not #'eql))

(defun nsubstitute/t ()
  (nsubstitute 1 2 (list 1 2 3) :test #'eql :test-not #'eql))

(defun tree-equal/t ()
  (subsetp '(2 3) '(1 2 3) :test #'eql :test-not #'eql))

(defun union/t ()
  (union '(1 2 3) '(3 4 5) :test #'eql :test-not #'eql))

(defun nunion/t ()
  (nunion (list 1 2 3) (list 3 4 5) :test #'eql :test-not #'eql))

(wscl-ct:record-eval
  (adjoin/t)
  (assoc/t)
  (count/t)
  (find/t)
  (intersection/t)
  (nintersection/t)
  (member/t)
  (mismatch/t)
  (position/t)
  (rassoc/t)
  (remove/t)
  (delete/t)
  (remove-duplicates/t)
  (delete-duplicates/t)
  (search/t)
  (set-difference/t)
  (nset-difference/t)
  (set-exclusive-or/t)
  (nset-exclusive-or/t)
  (sublis/t)
  (nsublis/t)
  (subsetp/t)
  (subst/t)
  (nsubst/t)
  (substitute/t)
  (nsubstitute/t)
  (tree-equal/t)
  (union/t)
  (nunion/t))

