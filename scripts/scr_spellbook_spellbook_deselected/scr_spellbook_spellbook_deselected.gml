function scr_spellbook_spellbook_deselected(spellbook_id, event_data_id){
	spellbook_id.selected_character = noone;
	spellbook_id.x = -2000;
	
	// Inform everyone that they are activated
	with(scr_create_event_data(obj_event_data_actions_activate, spellbook_id)) {
		scr_dispatch_blocking(self);
	}
	
	show_debug_message("Spellbook on " + character.name + " was deselected.");
}