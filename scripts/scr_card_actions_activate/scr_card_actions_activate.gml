function scr_card_actions_activate(card_id, event_data_id){
	if(global.mana >= card_id.mana_cost) {
		card_id.targetable = true;
	}
}