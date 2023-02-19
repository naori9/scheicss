(include "scheicss.scm")

(write-style
 "example.css"

 (body
  (color "white")
  (background-color "black"))

 (hover (a
	 (color "grey")))

 (id "header"
     (position "absolute")
     (width "100%")
     (height "16em")
     (background-color "#404040"))
 
 (checked (after (class "foobar"
			(transition "opacity .25s ease-in-out"))))

 ;; Makeshift solution for selectors, at-rules, etc.
 (make-element "h1#title, h2#subtitle"
	       (font-family "monospace"))

 ;; Or just pass a string
 "@charset \"utf-8\";\n"
 
 )
