(use-modules (ice-9 textual-ports))


(define (make-generator input output replacement-proc)
  (call-with-output-file output
    (lambda (output-port)
      (put-string output-port
		  (string-concatenate
		   (map
		    replacement-proc
		    (call-with-input-file input
		      (lambda (input-port)
			(string-split (get-string-all input-port)
				      #\,)))))))))

(make-generator "html.txt" "htmltags.scm"
		(lambda (tag)
                  (string-concatenate (list "(define (" tag
                                            " content) (css-braces \"" tag "\" content))\n"))))
(make-generator "css.txt" "cssattrs.scm"
		(lambda (attribute)
		  (string-concatenate (list "(define (" attribute
					    " value) (css-attribute \"" attribute
					    "\" value))\n"))))

;; Will not generate for part() and slotted()
(make-generator "pseudoelements.txt" "pseudoel.scm"
		(lambda (pseudoel)
		  (string-concatenate (list "(define (" pseudoel
					    " element) (pseudo-element element \""
					    pseudoel "\"))"))))
(make-generator "pseudoclasses.txt" "pseudocl.scm"
		(lambda (pseudocl)
		  (string-concatenate (list "(define (" pseudocl
					    " element) (pseudo-class element \""
					    pseudocl "\"))"))))
