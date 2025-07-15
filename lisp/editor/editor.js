// Add editor-to-plaintext file content convertor
let definition_download = () => {
    const definition_text = quill.getText();
    const minified_definition = definition_text.replace(/(\r\n|\n|\r)/gm, "\t").replace(/\t+/g, "").trim();
    const blob = new Blob([minified_definition], { type: "text/plain;charset=utf-8" });
    const url = URL.createObjectURL(blob);
    const downloadLink = document.createElement("a");
    
    downloadLink.href = url;
    downloadLink.download = "spreadsheet.lisp";
    downloadLink.style.display = "none";

    document.body.appendChild(downloadLink);
    downloadLink.click();
    document.body.removeChild(downloadLink);
    
    URL.revokeObjectURL(url);
}

// Borrowing wren's syntax highlighter
hljs.configure({
    languages: ["wren"]
});

const bindings = {
    saveDefinition: {
        key: "S",
        shiftKey: true,
        ctrlKey: true,
        handler: definition_download
    }
}

// Quill.js editor initialization options
const options = {
    modules: {
        toolbar: false,
        syntax: true,
        keyboard: {
            bindings: bindings
        }
    },
    theme: "snow"
};

// Initial editor setup
const quill = new Quill("#editor", options);
quill.setText("DEFINE(\n\tIDENTITY,\n\tLAMBDA(\n\t\tx,\n\t\tx))");
quill.formatText(0, quill.getLength(), "size", "30px");
quill.focus();
quill.setSelection(quill.getLength()-3);

// const Delta = Quill.import("delta");