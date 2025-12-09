// If URL parameter 'q' exists, then populate query textarea.
let extract_q_parameter = () => {
    const url_params = new URLSearchParams(window.location.search);

    if (url_params.has("q")) {
        let url_query = url_params.get("q");
        let spaced_query = url_query.replaceAll("_", " ");
        let formatted_query = spaced_query[0].toUpperCase() + spaced_query.slice(1) + "?";
        document.getElementById("input").value = formatted_query;
    }
}
extract_q_parameter();

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

// If query exists, then play resulting audio.
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