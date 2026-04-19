name = "quiz 1"

execute_code = function() {
    var evil = memory_get("choices", "test_evil")
    
	cutscene_create()
    cutscene_player_canmove(false)
    
    if !evil {
    	cutscene_dialogue("Answer 5 questions related to basic Algebra conputing.{p}{c}Question 1.{p}{c}m + 3 = 6{p}{c}What is the value of m?{p}{c}{choice(`0`, `1`, `2`, `3`)}{e}", "")
    	
    	cutscene_func(function() {
    		if global.temp_choice == 3 {
                cutscene_create()
                cutscene_player_canmove(false)
    			cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Question 2{p}{c}1a + 6 = 5{p}{c}What is the value of a ?{p}{c}{choice(`1`, `-1`)}", "{e}")
                
                cutscene_func(function() {
            		if global.temp_choice == 1 {
                        cutscene_create()
                        cutscene_player_canmove(false)
            			cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Question 3{p}{c}5 x 2 (b + 4) = 90{p}{c}What is the value of b ?{p}{c}{choice(`4`, `5`, `6`)}", "{e}")
                        
						cutscene_func(function() {
		            		if global.temp_choice == 0 {
		                        cutscene_create()
		                        cutscene_player_canmove(false)
		            			cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Question 4{p}{c}4 x (1+2) = ___{p}{c}Which answers doesn't equal to the question?{p}{c}{choice(`12`, `4+8`, `6`, `(4 x 1) + (4 x 2)`)}", "{e}")
                        
								cutscene_func(function() {
				            		if global.temp_choice == 2 {
				                        cutscene_create()
				                        cutscene_player_canmove(false)
				            			cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Question 5{p}{c}If x = 5 in _x - 2x = 20,{p}{c}What is the value of the missing number?{p}{c}{choice(`6`, `5`, `4`, `7`)}", "{e}")
                        
											cutscene_func(function() {
											    if global.temp_choice == 0 {
											        cutscene_create()
											        cutscene_player_canmove(false)
                                
											        cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Quiz 1 finished!")
                                
											        cutscene_func(function() {
											        memory_flick("choices", "test_evil", false)
											        })
                                
											        cutscene_player_canmove(true)
											        cutscene_play()
                                
											        return -1
											        }
                            
											    dialogue_start("{col(r)}Wrong!{reset_col} Try again from the start.")
											})
                        
				                        cutscene_wait_until(function() { 
				                    		return !instance_exists(o_ui_dialogue) 
				                    	})
				                        cutscene_player_canmove(true)
                        
				                        cutscene_play()
                        
				                        return -1
				            		}
				            		dialogue_start("{col(r)}Wrong!{reset_col} Try again from the start.")
				            	})
                        
		                        cutscene_wait_until(function() { 
		                    		return !instance_exists(o_ui_dialogue) 
		                    	})
		                        cutscene_player_canmove(true)
                        
		                        cutscene_play()
                        
		                        return -1
		            		}
		            		dialogue_start("{col(r)}Wrong!{reset_col} Try again from the start.")
		            	})
                        
                        cutscene_wait_until(function() { 
                    		return !instance_exists(o_ui_dialogue) 
                    	})
                        cutscene_player_canmove(true)
                        
                        cutscene_play()
                        
                        return -1
            		}
            		dialogue_start("{col(r)}Wrong!{reset_col} Try again from the start.")
            	})
                
                cutscene_wait_until(function() { 
                    return !instance_exists(o_ui_dialogue) 
                })
                cutscene_player_canmove(true)
                
                cutscene_play()
                
                return -1
    		}
            
    		dialogue_start("{col(r)}Wrong!{reset_col} Try again from the start.")
    	})
    	cutscene_wait_until(function() { 
    		return !instance_exists(o_ui_dialogue) 
    	})
    }
    else {
    	cutscene_dialogue("You have finished this part.{p}{c}Try answer the other quizzes.")
    }
    
	cutscene_player_canmove(true)
	cutscene_play()
}