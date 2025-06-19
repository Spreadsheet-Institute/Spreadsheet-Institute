(define
    editor
    (document.getElementById "editor"))

(define
    (<p>)
    (document.createElement "p"))

(define
    (<p:innerHTML> content)
    (let ((element (<p>)))
        (set! element.innerHTML content)
        element))

(editor.appendChild (<p:innerHTML> "Editor"))