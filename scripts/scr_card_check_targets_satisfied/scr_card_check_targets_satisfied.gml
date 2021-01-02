function scr_card_check_targets_satisfied(card_id){
	return(ds_list_size(card_id.collected_targets) == card_id.num_targets);
}