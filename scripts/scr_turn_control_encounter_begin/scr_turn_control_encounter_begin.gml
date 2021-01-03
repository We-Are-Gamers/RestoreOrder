function scr_turn_control_encounter_begin(turn_control_id, event_data_id){
	// TOOD:
	// load the next encouter
	instance_create_layer(x, y, "Instances", obj_encounter_lvl1_champion);
	turn_control_id.turn = enum_turn_stage_types.player;
	with(scr_create_event_data(obj_event_data_turn_begin, self)) {
		scr_dispatch_blocking(self);
	}
}