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
    (.innerHTML (<p>) "Editor"))

(editor.appendChild content)