(set! self.greet (lambda () "Salve Mundi"))
; (console.log (greet))

(define
    (input-textarea-element)
    (document.getElementById "input-textarea"))

(define
    (introitus)
    (let ((input (input-textarea-element)))
        (input.value)))

(console.log (introitus))