name = "indiv choice test"

execute_code = function() {
    
	cutscene_create()
    cutscene_player_canmove(false)
    	cutscene_dialogue("* Is this seperated?{p}{choice(`yes`, `no`)}{e}")
    	
    	cutscene_func(function() {
			if global.temp_choice == 0 {
				cutscene_dialogue("* Ok.")
			}
			
			else if global.temp_choice == 1 {
				cutscene_dialogue("*My bad")
			}
    	})
	
		cutscene_wait_until(function() { 
	    		return !instance_exists(o_ui_dialogue) 
	    	})
	cutscene_player_canmove(true)
	cutscene_play()
	
		cutscene_dialogue("How about this?{p}{choice(`yes`, `no`)}{e}")
		
		cutscene_func(function() {
			if global.temp_choice == 0 {
				cutscene_dialogue("* Ok.")
			}
			
			else if global.temp_choice == 1 {
				cutscene_dialogue("*My bad")
			}
		})
		
		cutscene_wait_until(function() { 
	    		return !instance_exists(o_ui_dialogue) 
	    	})
    
	cutscene_dialogue("Results")
	
	cutscene_player_canmove(true)
	cutscene_play()
}