function scr_spellbook_actions_activate(spellbook_id, event_data_id){
	with(obj_spellbook_button) {
		targetable = true;
	}
	spellbook_id.selected_character = noone;
}