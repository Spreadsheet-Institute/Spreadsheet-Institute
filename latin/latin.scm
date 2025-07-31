(set! self.saluto (lambda () "Salve Mundi"))
; (console.log (saluto))

(define
    (input-textarea-element)
    (document.getElementById "input-textarea"))

(define
    (introitus)
    (let ((textarea (input-textarea-element)))
        textarea.value))

(console.log (introitus))