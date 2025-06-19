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
    (<div:class:id:innerHTML> classifier identifier content)
    (let ((element (<div>)))
        (element.classList.add classifier)
        (set! element.id identifier)
        (set! element.innerHTML content)
        element))

(define
    editor
    (document.getElementById "editor"))

(editor.appendChild (<input:id:placeholder> "cli" "Command Line"))
(editor.appendChild (<div:id:innerHTML> "palette" "Command Palette"))
(let ((cli (document.getElementById "cli")))
    (cli.addEventListener "keyup" (console.log "CLI: " cli.value)))

(editor.appendChild (<input:id:placeholder> "buffer" "Buffer"))
(editor.appendChild (<div:id:innerHTML> "grid" "Definition Editor"))
(let ((buffer (document.getElementById "buffer")))
    (buffer.addEventListener "keyup" (console.log "Buffer: " buffer.value)))