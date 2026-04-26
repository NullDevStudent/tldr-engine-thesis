if (keyboard_check_pressed(vk_space)) {
    var q = get_next_question();
    if (q != -1) {
        show_question_in_textbox(q);
    } else {
        end_quiz();
    }
}
