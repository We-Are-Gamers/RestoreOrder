function scr_spellbook_actions_deactivate(spellbook_id, event_data_id){
	// Don't deactivate ourselves.
	if(event_data_id.id == spellbook_id.id) {
		return;
	}
	with(obj_spellbook_button) {
		targetable = false;
	}
	spellbook_id.selected_character = noone;
}