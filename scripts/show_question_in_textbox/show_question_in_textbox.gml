/// Script: show_question_in_textbox(question)
function show_question_in_textbox(question) {
    var display_text = question[? "prompt"] + "\n";
    var choices = question[? "choices"];

    for (var i = 0; i < array_length(choices); i++) {
        display_text += string(i+1) + ") " + choices[i] + "\n";
    }

    // Send to your textbox engine
    textbox_show(display_text);
}
