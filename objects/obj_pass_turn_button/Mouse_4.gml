if(targetable) {
	global.mana = 0;
	with(scr_create_event_data(obj_event_data_turn_step, self)) {
		scr_dispatch_blocking(self);
	}
}