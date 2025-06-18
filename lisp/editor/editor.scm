(define
    editor
    (document.getElementById "editor"))

(define
    content
    (-->
        (document.createElement "p")
        (.textContent "Editor")))

(editor.appendChild content)