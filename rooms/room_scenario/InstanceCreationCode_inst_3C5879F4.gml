name = "quiz 3"

execute_code = function() {
    var evil = memory_get("choices", "test_evil")
    
	cutscene_create()
    cutscene_player_canmove(false)
    
    if !evil {
    	cutscene_dialogue("Identify what Algebra Terminology is being shown from 5 lists.{p}{c}Question 1.{p}{c}2 + 4{p}{c}5x - 1{p}{c}2 - y - 11{p}{c}1 (p * 3) + 21{p}{c}{choice(`Polynomial`, `Equation`, `Constant`, `Expression`)}{e}", "")
    	
    	cutscene_func(function() {
    		if global.temp_choice == 3 {
                cutscene_create()
                cutscene_player_canmove(false)
    			cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Question 2{p}{c}a, s, d, f, x, i, j{p}{c}{choice(`Term`, `Constant`, `Variable`, `Equation`)}", "{e}")
                
                cutscene_func(function() {
            		if global.temp_choice == 2{
                        cutscene_create()
                        cutscene_player_canmove(false)
            			cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Question 3{p}{c}52, 183, -20, 4{p}{c}{choice(`Term`, `Monomial`, `Constant`, `Coefficient`)}", "{e}")
                        
						cutscene_func(function() {
		            		if global.temp_choice == 2 {
		                        cutscene_create()
		                        cutscene_player_canmove(false)
		            			cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Question 4{p}{c}Use the numbers highlighted in {col(y)}yellow{reset_col} to identify what this part refer to.{p}{c}{col(y)}3{reset_col}v - 2{p}{c}ax + {col(y)}2{reset_col}x{p}{c}{choice(`Coefficient`, `Polynomial`, `Like Terms`, `Constant`)}", "{e}")
                        
								cutscene_func(function() {
				            		if global.temp_choice == 0 {
				                        cutscene_create()
				                        cutscene_player_canmove(false)
				            			cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Question 5{p}{c}6 = 2x{p}{c}4p + 6k - 14 = 2{p}{c} 3 x 2(2i) = 6i x i{p}{c}{choice(`Polynomial`, `Equation`, `Expression`, `Like Terms`)}", "{e}")
                        
											cutscene_func(function() {
											    if global.temp_choice == 1 {
											        cutscene_create()
											        cutscene_player_canmove(false)
                                
											        cutscene_dialogue("{col(g)}Correct!{reset_col}{p}{c}Quiz 3 finished!")
                                
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