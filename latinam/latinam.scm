;;; latinam.scm

; (set! self.saluto (lambda () "Salve Mundi"))
; (console.log (saluto))

(define
    (consolor! consolamen)
    (console.log consolamen))

(define
    (par? valoroI valoroII)
    (= valoroI valoroII))

(define
    (elementum. identitatis)
    (document.getElementById identitatis))

(define
    (elementis. species)
    (document.getElementsByClassName species))

(define
    (sententias.)
    (let ((textarea (elementum. "input-textarea")))
        textarea.value))

(consolor! (sententias.))

(define
    (nihil? magnitudo)
    (par? 0 magnitudo))

(define
    (unum? magnitudo)
    (par? 1 magnitudo))

(consolor! (unum? 2))