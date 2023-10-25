;; this is poor functional programming as i am introducing
;; side effects to the function(the function will have a side
;; effect, i.e. modiying the value of its parameter)
(defun poor-style (p)
  (setf p (+ p 5))
  (list 'result 'is p))

;; here, i do not change the value of p
;; instead i create a new local variable, which i use
;; to alter the value with, hence no side effects to
;; the original p parameter
(defun good-style (p)
  (let ((q (+ p 5)))
    (list 'result 'is q)))

;; interestingly, when i load poor-style to sbcl it does not
;; compile(or work/interpret, i suppose). however when i just
;; type it out to the repl on sbcl it works fine. i still do
;; not understand this behavior. 
