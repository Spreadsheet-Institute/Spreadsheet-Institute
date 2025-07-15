// Borrowing wren's syntax highlighter
hljs.configure({
    languages: ["wren"]
});

// Quill.js editor initialization options
const options = {
    modules: {
        toolbar: false,
        syntax: true
    },
    theme: "snow"
};

// Initial editor setup
const quill = new Quill("#editor", options);
quill.setText("DEFINE(\n\tIDENTITY,\n\tLAMBDA(\n\t\tx,\n\t\tx))");
quill.formatText(0, quill.getLength(), "size", "30px");
quill.focus();
quill.setSelection(quill.getLength()-3);

// Add "Control/Command + S" keyboard event override
document.addEventListener("Keydown", (event) => {
    const control_or_command_is_down = event.ctrlKey || event.metaKey;
    const shift_is_down = event.shiftKey;

    if (control_or_command_is_down && shift_is_down && event.key === "s") {
        event.preventDefault();
        console.log("Saving definition...");
        definition_download();
    }
});

// Add editor-to-plaintext file content convertor
let definition_download = () => {
    const definition_textline = quill.getText().replace(/(\r\n|\n|\r|\t)/gm, " ").trim();
    const blob = new Blob([definition_textline], { type: "text/plain;charset=utf-8" });
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

// const Delta = Quill.import("delta");