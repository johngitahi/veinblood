(defun our-member(obj array)
	(if (null array)
		nil 
		(if (eql (car array) obj)
			array
			(our-member obj (cdr array)))))
