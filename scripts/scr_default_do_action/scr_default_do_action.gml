function scr_default_do_action(card_id){
	for(var i = 0; i < ds_list_size(card_id.collected_targets); ++i) {
		var target = ds_list_find_value(card_id.collected_targets, i);
		target._health += card_id.healing;
		
		if(target._health > target._health_base) {
			target._health = target._health_base;
		}
		
		target.defense += card_id.defense;
		
		target.atk_mult *= card_id.buff_atk;
		
		var damage = floor(card_id.atk * card_id.owner.atk_mult);
		target.defense -= damage;
		if(target.defense < 0) {
			target._health += target.defense;
			show_debug_message(target.name + " hit for " + string(-target.defense) + " damage.");
			target.defense = 0;
		}
	}
}