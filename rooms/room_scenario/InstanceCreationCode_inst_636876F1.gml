name = "quiz 2"

execute_code = function() {
    var evil = memory_get("choices", "test_evil")
    
	cutscene_create()
    cutscene_player_canmove(false)
    
    if !evil {
    	cutscene_dialogue("Answer 5 questions related to Algebra Terminologies.{p}{c}Question 1.{p}{c}A statement that two expressions are equal, usually separated by an = sign.{p}{c}{choice(`Variable`, `Equation`, `Constant`, `Expression`)}{e}", "")
    	
    	cutscene_func(function() {
    		if global.temp_choice == 1 {
                cutscene_create()
                cutscene_player_canmove(false)
    			cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Question 2{p}{c}A number, variable, or combination of both separated by + or - signs{p}{c}{choice(`Term`, `Constant`, `Variable`, `Equation`)}", "{e}")
                
                cutscene_func(function() {
            		if global.temp_choice == 0{
                        cutscene_create()
                        cutscene_player_canmove(false)
            			cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Question 3{p}{c}Which of these letters are mostly used as Variable in Algebra?{p}{c}{choice(`a`, `x`, `j`, `All of them`)}", "{e}")
                        
						cutscene_func(function() {
		            		if global.temp_choice == 3 {
		                        cutscene_create()
		                        cutscene_player_canmove(false)
		            			cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Question 4{p}{c}How many term a polynomial had?{p}{c}{choice(`1`, `More than 1`)}", "{e}")
                        
								cutscene_func(function() {
				            		if global.temp_choice == 1 {
				                        cutscene_create()
				                        cutscene_player_canmove(false)
				            			cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Question 5{p}{c}Which of the following pairs are Unlike Terms?{p}{c}{choice(`10a, 2a`, `-5, 25`, `-xy, xy`, `7ab, 7cd`)}", "{e}")
                        
											cutscene_func(function() {
											    if global.temp_choice == 3 {
											        cutscene_create()
											        cutscene_player_canmove(false)
                                
											        cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Quiz 2 finished!")
                                
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
    	cutscene_dialogue("You have finished this part.{p}{c}Reload game if you wish to try others.")
    }
    
	cutscene_player_canmove(true)
	cutscene_play()
}