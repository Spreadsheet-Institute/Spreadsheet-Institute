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

(define
    editor
    (document.getElementById "editor"))

(editor.appendChild (<input:id:placeholder> "cli" "Command Line"))
(editor.appendChild (<div:id:innerHTML> "palette" "Command Palette"))
(editor.appendChild (<div:id:innerHTML> "grid" "Definition Editor"))