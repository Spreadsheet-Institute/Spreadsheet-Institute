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
quill.setSelection(quill.getLength()-4, 1);

// const Delta = Quill.import("delta");