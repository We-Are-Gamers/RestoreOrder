function scr_card_target_selected(card_id, event_data_id){
	// if this card isn't selected
	//	return
	// elif this target is already in the target list
	//	return
	// else:
	//	add to card target list
	//	if target requirements are fulfilled:
	//		execute card action script
	//		apply mana cost
	//		dispatch(targets_deactivate)
	//		dispatch(action_occured)
	with(card_id) {
		if(!selected) {
			return;
		}
		var target = event_data_id.dispatcher_id;
		if(ds_list_find_index(collected_targets, target) != -1) {
			// target is already in our collected_targets
			return;
		}
		ds_list_add(collected_targets, target);
		if(scr_card_check_targets_satisfied(self)) {
			// stop cards being targetable
			with(scr_create_event_data(obj_event_data_targets_deactivate, self)) {
				scr_dispatch_blocking(self);
			}
			// pay the mana cost of this card
			global.mana -= self.mana_cost
			// do the card action
			script_execute(self.do_action_script, self);
			
			// discard me
			with(scr_create_event_data(obj_event_data_card_discard, self)) {
				scr_dispatch_blocking(self);
			}
			
			// tell turn_control that an action has completed
			with(scr_create_event_data(obj_event_data_action_occured, self)) {
				scr_dispatch_blocking(self);
			}
		}
	}
}