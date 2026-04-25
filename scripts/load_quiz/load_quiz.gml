function load_quiz(quiz_id) {
    // Clear old questions
    ds_list_clear(questions);

    switch (quiz_id) {
        case 1:
            // Add 10 questions for Quiz 1
            var q1 = ds_map_create();
            q1[? "prompt"]  = "What is the capital of France?";
            q1[? "choices"] = ["Paris","London","Berlin","Madrid"];
            q1[? "answer"]  = 0; // correct index BEFORE shuffle
            ds_list_add(questions, q1);

            var q2 = ds_map_create();
            q2[? "prompt"]  = "Who wrote 'Hamlet'?";
            q2[? "choices"] = ["Shakespeare","Dickens","Homer","Tolstoy"];
            q2[? "answer"]  = 0;
            ds_list_add(questions, q2);

            // … add 8 more
        break;

        case 2:
            // Add 10 questions for Quiz 2
        break;

        // Repeat for quizzes 3–15
    }

    // --- Randomize questions order ---
    ds_list_shuffle(questions);

    // --- Randomize choices inside each question ---
    for (var i = 0; i < ds_list_size(questions); i++) {
        var q = questions[| i];
        var choices = q[? "choices"];

        // Store the correct answer text before shuffle
        var correct_text = choices[q[? "answer"]];

        // Shuffle the choices array
        array_shuffle(choices);

        // Update the map with shuffled choices
        q[? "choices"] = choices;

        // Find new index of the correct answer
        for (var j = 0; j < array_length(choices); j++) {
            if (choices[j] == correct_text) {
                q[? "answer"] = j;
                break;
            }
        }
    }

    // Reset quiz state
    current_index = 0;
    quiz_score    = 0;
    quiz_number   = quiz_id;
}
