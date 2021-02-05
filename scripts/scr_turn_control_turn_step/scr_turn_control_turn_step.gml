function scr_turn_control_turn_step(turn_control_id, event_data_id){
	
	// Remove any being that is dead
	with(obj_being) {
		if(_health <= 0) {
			with(obj_enemy) {
				draw_target_line = false;
			}
			instance_destroy();
			with(scr_create_event_data(obj_event_data_enemy_evaluate_target, self)) {
				scr_dispatch_blocking(self);
			}
		}
	}
	
	// Check if all enemies are dead
	if(instance_number(obj_enemy) == 0) {
		with(scr_create_event_data(obj_event_data_encounter_end, self)) {
			scr_dispatch_blocking(self);
		}
	}
	
	// Check if all characters are dead
	if(instance_number(obj_character) == 0) {
		with(scr_create_event_data(obj_event_data_lose, self)) {
			scr_dispatch_blocking(self);
		}
	}
	
	
	with(turn_control_id) {
		if(turn == enum_turn_stage_types.player) {
			scr_turn_control_player_turn_step(self);
		} else {
			scr_turn_control_enemy_turn_step(self);
		}
	}
}