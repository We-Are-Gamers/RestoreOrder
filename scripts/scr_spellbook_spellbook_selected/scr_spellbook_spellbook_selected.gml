function scr_spellbook_spellbook_selected(spellbook_id, event_data_id){
	// If we are changing our selection, mark the old one de-selected
	if(spellbook_id.selected_character_id != noone and spellbook_id.selected_character_id != event_data_id.character) {
		var spellbook_button = spellbook_id.selected_character_id.spellbook_button;
		spellbook_button.selected = false;
		spellbook_button.sprite_index = spr_spellbook_button;
	}
	spellbook_id.selected_character_id = event_data_id.character;
	spellbook_id.x = 448;
	
	// Inform everyone that they are deactivated
	with(scr_create_event_data(obj_event_data_actions_deactivate, spellbook_id)) {
		scr_dispatch_blocking(self);
	}
}