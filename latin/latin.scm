;;; latin.scm

(set! self.saluto (lambda () "Salve Mundi"))
; (console.log (saluto))

(define
    (consolor consolamen)
    (console.log consolamen))

(define
    (input-textarea-element)
    (document.getElementById "input-textarea"))

(define
    (introitus)
    (let ((textarea (input-textarea-element)))
        textarea.value))

(consolor (introitus))