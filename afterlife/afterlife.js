// Submit query to Afterlife API when [Enter] key is pressed
let submit_query = (event) => {
    if (event.keyCode === 13) {
        event.preventDefault();
        let query_text = document.getElementById("input").value;
        console.log(query_text);
        query_knowledgebase(query_text);
    }
}

document.getElementById("input").addEventListener("keydown", submit_query);

let query_knowledgebase = (query) => {
    let lowercase_query = query.toLowerCase();
    
    let knowledgebase = {
        "what is your favorite color?": "My favorite color is lavender..m4a",
        "what is your favourite colour?": "My favorite color is lavender..m4a",
    };

    if (lowercase_query in knowledgebase) {
        let result_audio = knowledgebase[lowercase_query];
        let result_filepath = "./knowledgebase/" + result_audio;
        
        console.log(result_filepath);

        let speaker_element = document.getElementById("speaker");
        speaker_element.src = result_filepath;
        speaker_element.play();
    }
}