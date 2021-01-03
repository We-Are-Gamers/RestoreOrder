function scr_turn_control_encounter_end(turn_control_id, event_data_id){
	show_debug_message("Encounter complete, congrats! Now get out of here.");
	with(instance_find(obj_encounter, 0)) {
		instance_destroy();
	}
	
	with(scr_create_event_data(obj_event_data_encounter_begin, self)) {
		scr_dispatch_blocking(self);
	}
}