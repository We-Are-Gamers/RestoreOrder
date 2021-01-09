function scr_card_actions_activate(card_id, event_data_id){
	var card_owner = card_id.owner;
	if(object_get_name(object_get_parent(card_owner.object_index)) != "obj_enemy") {
		if(global.mana >= card_id.mana_cost) {
			card_id.targetable = true;
		}
	}
	card_id.selected = false;
	ds_list_clear(card_id.collected_targets);
}