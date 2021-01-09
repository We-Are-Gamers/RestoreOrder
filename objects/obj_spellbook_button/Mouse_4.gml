if(targetable and not selected) {
	selected = true;
	with(scr_create_event_data(obj_event_data_spellbook_selected, self)) {
		character = other.character;
		scr_dispatch_blocking(self);
	}
} else if(targetable and selected) {
	selected = false;
	with(scr_create_event_data(obj_event_data_spellbook_deselected, self)) {
		character = other.character;
		scr_dispatch_blocking(self);
	}
}