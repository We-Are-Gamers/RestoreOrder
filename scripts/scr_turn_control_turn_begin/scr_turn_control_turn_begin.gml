function scr_turn_control_turn_begin(turn_control_id, event_data_id){
	global.mana = global.starting_mana;
	turn_control_id.turn = enum_turn_stage_types.player;
	turn_control_id.turn_counter += 1;
	with(scr_create_event_data(obj_event_data_hand_fill, self)) {
		scr_dispatch_blocking(self);
	}
	with(scr_create_event_data(obj_event_data_turn_step, self)) {
		scr_dispatch_blocking(self);
	}
}