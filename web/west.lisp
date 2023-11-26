(define-page example "/example" ()
  (cl-who:with-html-output-to-string (o)
    (cl-who:htm
     (:html
      (:head (:title "Spanish phrases from Narcos")
	     (:link :rel "stylesheet" :type "text/css"
		    :href (uri-to-url "static/example/example.css" :representation :external)))
      (:body (:header (:h1 "Hijo de Puta."))
	     (:main (:p "mismo")))))))
