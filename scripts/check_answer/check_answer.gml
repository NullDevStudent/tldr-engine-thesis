/// Script: check_answer(question, choice_index)
function check_answer(question, choice_index) {
    var correct = question[? "answer"];
    if (choice_index == correct) {
        quiz_score += 1;
        show_debug_message("Correct!");
    } else {
        show_debug_message("Wrong!");
    }

    // Move to next question
    var next_q = get_next_question();

    // Check if quiz ended (10 questions answered)
    if ((current_index % questions_per_quiz) == 0) {
        // End of quiz
        show_debug_message("Quiz " + string(quiz_number) + " finished!");
        show_debug_message("Score: " + string(quiz_score) + " / " + string(questions_per_quiz));

        // Add to total
        total_score += quiz_score;

        // Reset quiz score
        quiz_score = 0;
        quiz_number += 1;

        // If all 15 quizzes done
        if (quiz_number > 15) {
            show_debug_message("All quizzes completed!");
            show_debug_message("Final Total Score: " + string(total_score) + " / " + string(questions_per_quiz * 15));
            return -1;
        }
    }

    return next_q;
}
