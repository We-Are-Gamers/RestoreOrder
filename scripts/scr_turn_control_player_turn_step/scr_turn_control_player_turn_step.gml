function scr_turn_control_player_turn_step(turn_control_id){
	with(turn_control_id) {
		// Switch to enemy turn stage if appropriate
		if(global.mana == 0) {
			turn = enum_turn_stage_types.enemy;
			with(obj_enemy) {
				ds_queue_enqueue(turn_control_id.enemy_turn_queue, self);
			}
			with(scr_create_event_data(obj_event_data_turn_step, self)) {
				scr_dispatch_blocking(self);
			}
			return;
		}
		
		// Enable the cards for clicking
		with(scr_create_event_data(obj_event_data_actions_activate, self)) {
			scr_dispatch_blocking(self);
		}
	}
}