function scr_card_target_deselected(card_id, event_data_id){
	if(not card_id.selected) {
		return;
	} else {
		for(var i = 0; i < ds_list_size(card_id.collected_targets); ++i) {
			var target = ds_list_find_value(card_id.collected_targets, i);
			if(target.id == event_data_id.dispatcher_id.id) {
				ds_list_delete(card_id.collected_targets, i);
				break;
			}
		}
	}
}