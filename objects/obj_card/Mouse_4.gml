if(!targetable) {
	return;
}

if(selected) {
	// Player is trying to un-select this card
	selected = false;
	// Clear any of the targets we had started to collect
	ds_list_clear(collected_targets);
	// Tell the target they are no longer being targeted
	with(scr_create_event_data(obj_event_data_targets_deactivate, self)) {
		scr_dispatch_blocking(self);
	}
	// Inform everyone that they are activated
	with(scr_create_event_data(obj_event_data_actions_activate, self)) {
		scr_dispatch_blocking(self);
	}
} else {
	// Player is selecting this card
	selected = true;
	// Deactivate all other actions
	with(scr_create_event_data(obj_event_data_actions_deactivate, self)) {
		scr_dispatch_blocking(self);
	}
	// Enable the targets to be targeted
	with(scr_create_event_data(obj_event_data_targets_activate, self)) {
		scr_dispatch_blocking(self);
	}
}