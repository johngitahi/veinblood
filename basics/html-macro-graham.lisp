(defmacro as (tag content)
  `(format t "<~(~A~)>~A</~(~A~)>" ,tag ,content ,tag))

(as "h3" "marica")


(defun html-builder (tag content)
  (format t "<~A>~A</~A>" tag content tag))

; works same to me
