function scr_spellbook_spellbook_deselected(spellbook_id, event_data_id){
	spellbook_id.selected_character = noone;
	show_debug_message("Spellbook on " + character.name + " was deselected.");
}