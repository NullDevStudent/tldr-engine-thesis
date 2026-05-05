trigger_code = function() {
	cutscene_create()
	if obj_quiz_box.is_active = true {
		cutscene_dialogue([
			"* (An unknown voice echoed inside.)",
			" {god(1)} FINISH THIS TEST FIRST, OR BE STUCK FOR AN ETERNITY. "
		])
	}
    else{
		cutscene_dialogue([
			"* ({god{1}PROCEED.}.)",
		])
	}
    
	cutscene_func(function(){
		actor_move(get_leader(), new actor_movement(0, 10, 30,,, DIR.DOWN, false))
	})
    
	cutscene_sleep(20)
	cutscene_set_variable(id, "triggered", false)
	cutscene_party_interpolate()
	cutscene_play()
	
}