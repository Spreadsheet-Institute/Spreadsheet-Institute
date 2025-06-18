(define
    editor
    (document.getElementById "editor"))

(define
    <p>
    (document.createElement "p"))

(define
    content
    (.innerHTML <p> "Editor"))

(editor.appendChild content)