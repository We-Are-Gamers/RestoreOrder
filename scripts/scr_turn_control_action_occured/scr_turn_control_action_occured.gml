function scr_turn_control_action_occured(turn_control_id, event_data_id){
	with(scr_create_event_data(obj_event_data_actions_deactivate, self)) {
		scr_dispatch_blocking(self);
	}
	with(scr_create_event_data(obj_event_data_turn_step, self)) {
		scr_dispatch_blocking(self);
	}
}