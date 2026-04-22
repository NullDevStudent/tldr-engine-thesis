/// Script: get_next_question()
function get_next_question() {
    if (current_index < ds_list_size(questions)) {
        var q = questions[| current_index];
        current_index += 1;
        return q;
    } else {
        return -1; // No more questions
    }
}
