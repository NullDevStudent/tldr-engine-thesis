// --- Keep your existing UI Variables ---
width = 400;
height = 300;
selected_index = 0;
answer_feedback = "";
x = display_get_gui_width() / 2;
y = display_get_gui_height() / 2;

// --- Interaction Variables ---
is_active = false; // Start hidden
interact_range = 64; 

// --- Data Variables ---
all_questions = []; 
question_text = "";
options = [];
correct_answer = 0;

// The function to pick the question (Keep this as we discussed before)
start_quiz = function() {
    if (array_length(all_questions) > 0) {
        is_active = true; // Show the box
        var _rand_index = irandom(array_length(all_questions) - 1);
        var _picked = all_questions[_rand_index];
        question_text = _picked.q;
        var _raw_options = _picked.a; 
        var _correct_text = _raw_options[0]; 

        options = array_shuffle(_raw_options);

        for (var i = 0; i < array_length(options); i++) {
            if (options[i] == _correct_text) {
                correct_answer = i;
                break;
            }
        }
    }
}
