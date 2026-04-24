/// Collision with obj_player (or Key Press event)
if (!quiz_completed) {
    // Call the controller to load this quiz
    with (obj_quiz_controller) {
        load_quiz(other.quiz_id);
    }

    // Mark this trigger as completed
    quiz_completed = true;

    // Optionally remove the object so it disappears
    instance_destroy();
}
