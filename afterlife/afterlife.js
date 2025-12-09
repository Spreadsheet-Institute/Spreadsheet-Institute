// Submit query to Afterlife API when [Enter] key is pressed
let submit_query = (event) => {
    if (event.keyCode === 13) {
        console.log(event.target.innerHTML);
    }
}

document.getElementById("input").addEventListener("keydown", submit_query);
