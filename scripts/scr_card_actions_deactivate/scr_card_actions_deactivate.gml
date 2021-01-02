function scr_card_actions_deactivate(card_id, event_data_id){
	card_id.targetable = false;
	// TODO why do we need this?
	// I know the the currently selected card shouldn't deselect itself
	// But why should these reset things happen on deactivate?
	// Can we make them happen on activate?
	// Leaving for now but worth revisiting
	if(event_data_id.dispatcher_id != card_id) {
		card_id.selected = false;
		ds_list_clear(card_id.collected_targets);
	}
}