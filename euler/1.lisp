(defun sum-multiples-of-3-or-5 (n)
  "Returns the sum of all the multiples of 3 or 5 below n."
  (let ((sum 0))
    (loop for i from 1 to n when (or (= 0 (rem i 3)) (= 0 (rem i 5)))
	  sum (+ sum i))
    sum))


(sum-multiples-of-3-or-5 1000)
