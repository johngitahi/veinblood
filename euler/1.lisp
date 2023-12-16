(defun find-sum (n)
  (let ((summed 0))
    (loop for i from 1 to (- n 1)
	  when (or (= (mod i 3) 0) (= (mod i 5) 0))
	  do (incf summed i))
    summed))

