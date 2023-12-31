(defun fibonacci<limit (limit)
  (let ((a 1)
	(b 2)
	(sum 0))
    (loop
     (when (<= b limit)
       (when (evenp b)
	 (incf sum b))
       (let ((temp (+ a b)))
	 (rotatef a b temp)))
     (unless (<= b limit)
       (return sum)))))
