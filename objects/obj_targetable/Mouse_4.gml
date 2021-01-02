if(targetable) {
	if(selected) {
		selected = false;
		// send deselected event
		with(scr_create_event_data(obj_event_data_target_deselected, self)) {
			scr_dispatch_blocking(self);
		}
	} else {
		selected = true;
		// send selected event
		with(scr_create_event_data(obj_event_data_target_selected, self)) {
			scr_dispatch_blocking(self);
		}
	}
}
