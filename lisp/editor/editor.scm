(define
    editor
    (document.getElementById "editor"))

(define
    <p>
    (lambda
        ()
        (document.createElement "p")))

(define
    content
    (-->
        (<p>)
        'innerHTML "Editor"))

(editor.appendChild content)