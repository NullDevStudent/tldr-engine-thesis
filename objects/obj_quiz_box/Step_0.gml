// 1. Check if the quiz is already open
if (!is_active) {
    // 2. Check if player is nearby
    if (instance_exists(obj_player)) {
        if (point_distance(x, y, obj_player.x, obj_player.y) < interact_range) {
            // 3. If nearby and Z is pressed, start the quiz
            if (keyboard_check_pressed(ord("Z"))) {
                start_quiz();
            }
        }
    }
} else {
    // Logic for when the quiz IS open (selecting answers)
    if (keyboard_check_pressed(vk_up)) selected_index--;
    if (keyboard_check_pressed(vk_down)) selected_index++;
    
    // Clamp selection
    selected_index = clamp(selected_index, 0, array_length(options) - 1);
    
    // Press Z again to submit answer
    if (keyboard_check_pressed(ord("Z"))) {
	    if (selected_index == correct_answer) {
	        answer_feedback = "Correct!";
	        // Use an Alarm to close the box after 1 second (60 frames)
	        if (alarm[0] == -1) alarm[0] = 60; 
	    } else {
	        answer_feedback = "Wrong! Try again.";
	    }
	}

}
