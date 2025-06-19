(define
    (<input>)
    (document.createElement "input"))

(define
    (<input:id:placeholder> identifier message)
    (let ((element (<input>)))
        (set! element.id identifier)
        (set! element.placeholder message)
        element))

(define
    (<div>)
    (document.createElement "div"))

(define
    (<div:id:innerHTML> identifier content)
    (let ((element (<div>)))
        (set! element.id identifier)
        (set! element.innerHTML content)
        element))

(document.body.appendChild (<input:id:placeholder> "cli" "CLI"))
(document.body.appendChild (<div:id:innerHTML> "palette" "Palette"))
(document.body.appendChild (<div:id:innerHTML> "grid" "Grid"))