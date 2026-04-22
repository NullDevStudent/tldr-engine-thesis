function scr_questions(){
/// Create Event
// Initialize quiz system
questions = ds_list_create();

// Example: add multiple-choice questions
var q1 = ds_map_create();
q1[? "prompt"]  = "What is the capital of France?";
q1[? "choices"] = ["Paris", "London", "Berlin", "Madrid"];
q1[? "answer"]  = 0;
ds_list_add(questions, q1);

var q2 = ds_map_create();
q2[? "prompt"]  = "Who wrote 'Hamlet'?";
q2[? "choices"] = ["Shakespeare", "Dickens", "Homer", "Tolstoy"];
q2[? "answer"]  = 0;
ds_list_add(questions, q2);

// … add more until you have enough for 15 quizzes × 10 questions = 150 total

// Shuffle once
ds_list_shuffle(questions);

// Tracking
current_index   = 0;
quiz_score      = 0;   // score for current quiz
total_score     = 0;   // accumulated score across all quizzes
quiz_number     = 1;   // current quiz number
questions_per_quiz = 10;

}