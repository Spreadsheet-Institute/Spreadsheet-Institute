;;; latinam.scm

; (set! self.saluto (lambda () "Salve Mundi"))
; (console.log (saluto))

(define
    (consolor consolamen)
    (console.log consolamen))

(define
    (elementum identitatis)
    (document.getElementById identitatis))

(define
    (elementis species)
    (document.getElementsByClassName species))

(define
    (sententias)
    (let ((textarea (elementum "input-textarea")))
        textarea.value))

(consolor (sententias))