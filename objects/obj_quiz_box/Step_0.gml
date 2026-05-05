// 1. Check if the quiz is already open
if (!is_active) {
    // FIX: Make sure this object name matches your player object in the Asset Browser
    if (instance_exists(o_dev_playermarker)) { 
        // FIX: Use o_dev_playermarker here too!
        if (point_distance(x, y, o_dev_playermarker.x, o_dev_playermarker.y) < interact_range) {
            if (keyboard_check_pressed(ord("Z"))) {
                start_quiz();
            }
        }
    }
} else {
    // Logic for when the quiz IS open
    if (keyboard_check_pressed(vk_up)) selected_index--;
    if (keyboard_check_pressed(vk_down)) selected_index++;
    
    selected_index = clamp(selected_index, 0, array_length(options) - 1);
    
    if (keyboard_check_pressed(ord("Z"))) {
	    if (selected_index == correct_answer) {
	        answer_feedback = "Correct!";
        
	        // Remove the answered question from the array
	        array_delete(all_questions, current_q_index, 1);
        
	        if (alarm[0] == -1) alarm[0] = 60; 
	    } else {
	        answer_feedback = "Wrong! Try again.";
	    }
	}

}
