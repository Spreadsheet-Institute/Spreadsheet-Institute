// Submit query to Afterlife API when [Enter] key is pressed
let submit_query = (event) => {
    if (event.keyCode === 13) {
        event.preventDefault();
        let query_text = document.getElementById("input").value;
        console.log(query_text);
    }
}

document.getElementById("input").addEventListener("keydown", submit_query);
