/// Script: load_quiz(quiz_id)
function load_quiz(quiz_id) {
    ds_list_clear(questions);

    switch (quiz_id) {
        case 1:
            // Add 10 questions for Quiz 1
            var q1 = ds_map_create();
            q1[? "prompt"]  = "What is the capital of France?";
            q1[? "choices"] = ["Paris","London","Berlin","Madrid"];
            q1[? "answer"]  = 0;
            ds_list_add(questions, q1);
            // … add 9 more
        break;

        case 2:
            // Add 10 questions for Quiz 2
        break;

        // … repeat for quizzes 3–15
    }

    ds_list_shuffle(questions);
    current_index = 0;
    quiz_score = 0;
}
