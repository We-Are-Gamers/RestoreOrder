function scr_spellbook_spellbook_selected(spellbook_id, event_data_id){
	// If we are changing our selection, mark the old one de-selected
	if(spellbook_id.selected_character_id != noone and spellbook_id.selected_character_id != event_data_id.character) {
		var spellbook_button = spellbook_id.selected_character_id.spellbook_button;
		spellbook_button.selected = false;
		scr_resume_smallness(spellbook_button);
	}
	spellbook_id.selected_character_id = event_data_id.character;
	spellbook_id.book_id.x = 448;
	
	show_debug_message("Spellbook on " + character.name + " was clicked.");
}