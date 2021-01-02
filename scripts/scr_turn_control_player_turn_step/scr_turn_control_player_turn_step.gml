function scr_turn_control_player_turn_step(turn_control_id){
	with(turn_control_id) {
		// TODO: check if no more characters
		if(global.mana == 0) {
			turn = enum_turn_stage_types.enemy;
			for(var i = 0; i < instance_number(obj_enemy); ++i) {
				ds_queue_enqueue(turn_control_id.enemy_turn_queue, instance_find(obj_enemy, i));
			}
			with(scr_create_event_data(obj_event_data_turn_step, self)) {
				scr_dispatch_blocking(self);
			}
			return;
		}
		// TODO: check if there are still enemies
		
		// enable the cards for clicking
		with(scr_create_event_data(obj_event_data_actions_activate, self)) {
			scr_dispatch_blocking(self);
		}
	}
}