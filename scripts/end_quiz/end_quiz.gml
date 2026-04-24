/// Script: end_quiz()
function end_quiz() {
    show_debug_message("Quiz " + string(quiz_number) + " finished!");
    show_debug_message("Score: " + string(quiz_score) + " / 10");

    // Add to total score
    total_score += quiz_score;

    // Move to next quiz if available
    if (quiz_number < 15) {
        quiz_number += 1;
        quiz_score = 0;
        current_index = 0;
        ds_list_shuffle(questions); // reshuffle for next quiz
        show_debug_message("Starting Quiz " + string(quiz_number));
    } else {
        show_debug_message("All quizzes finished!");
        show_debug_message("Total Score: " + string(total_score) + " / 150");
    }
}
