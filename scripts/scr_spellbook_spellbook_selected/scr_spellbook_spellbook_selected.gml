function scr_spellbook_spellbook_selected(spellbook_id, event_data_id){
	if(spellbook_id.selected_character != noone) {
		var spellbook_button = spellbook_id.selected_character.spellbook_button;
		spellbook_button.selected = false;
		scr_resume_smallness(spellbook_button);
	}
	spellbook_id.selected_character = event_data_id.character;
	show_debug_message("Spellbook on " + character.name + " was clicked.");
}