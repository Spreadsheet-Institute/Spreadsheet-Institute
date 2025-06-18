(define
    editor
    (document.getElementById "editor"))

(define
    (<p>)
    (document.createElement "p"))

(define
    content
    (-->
        (<p>)
        ('innerHTML "Editor")))

(editor.appendChild content)