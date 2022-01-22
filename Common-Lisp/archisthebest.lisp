#!/usr/bin/sbcl --script
(defparameter *best-list* '((English "Arch is the best!")
          (Chinese "Arch, 她出类拔萃!")
          (German "Arch ist das Beste!")
          (Greek "Το Arch είναι το καλύτερο!")
          (Latin "Arch optimum est!")
          (French "Arch est le meilleur!")
          (Polish "Arch jest najlepszy!")))
(defun aitb ()
  (format t "Available languages: ~{~{~@(~a~)~*~}~^, ~}.~%" *best-list*)
  (loop for input = (progn (format t "~&Input the desired language, (or 'quit'): ~%")
                           (force-output)
                           (read-line))
     if (string-equal input "quit")
     do (loop-finish)
     else
     do (let ((language-def
               (assoc input *best-list*
                      :key (lambda (lang) (symbol-name lang))
                      :test #'string-equal)))
          (if language-def
              (format t "~&~A~%" (second language-def))
              (format t "~&Invalid language.~%"))))
  (format t "~&May the Arch be with you!~%"))
(aitb)
