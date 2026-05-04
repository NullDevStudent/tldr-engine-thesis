count = 0
trigger_code = function() {
	cutscene_create()
	if count == 0 {
		cutscene_dialogue([
			"* (An unknown force forbidded you to leave.)",
			"* (You cannot move backwards)"
		])
	}
    else{
		cutscene_dialogue([
			"* (You must continue)",
		])
	}
    
	cutscene_func(function(){
		actor_move(get_leader(), new actor_movement(0, -10, 30,,, DIR.UP, false))
	})
    
	cutscene_sleep(20)
	cutscene_set_variable(id, "triggered", false)
	cutscene_party_interpolate()
	cutscene_play()
	
	count ++
}