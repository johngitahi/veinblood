;; (dolist (x (list 1 2 3)) (print x) if (evenp x) (return))

;; (dotimes (i 4) (print i))

;(dotimes (x 6)
;  (dotimes (y )
;    (format t "~3d " (* (1+ x) (1+ y))))
;  (format t "~%"))

;(do ((n 0 (1+ n))
;     (cur 0 next)
;     (next 1 (+ cur next)))
;    ((= 10 n) cur))

(defmacro do-primes (var-and-range &rest body)
  (let ((var (first var-and-range))
	(start (second var-and-range))
	(end (third var-and-range)))
    `(do ((,var (next-prime ,start) (next-prime (1+ ,var))))
	 ((> ,var ,end))
       ,@body)))


