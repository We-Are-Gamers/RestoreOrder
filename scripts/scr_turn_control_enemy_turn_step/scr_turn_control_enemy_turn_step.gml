function scr_turn_control_enemy_turn_step(turn_control_id){
	if(!ds_queue_empty(turn_control_id.enemy_turn_queue)) {
		var enemy = ds_queue_dequeue(turn_control_id.enemy_turn_queue);
		with(enemy) {
			alarm[0] = global.enemy_action_delay;
		}
	} else {
		with(scr_create_event_data(obj_event_data_turn_begin, self)) {
			scr_dispatch_blocking(self);
		}
	}
}