(set! self.greet (lambda () "Salve Mundi"))
; (console.log (greet))

(define
    (input-textarea-element)
    (document.getElementById "input-textarea"))

(define
    (input-text)
    (let ((input-textarea (input-textarea-element)))
        (input-textarea.value)))

(console.log (input-text))