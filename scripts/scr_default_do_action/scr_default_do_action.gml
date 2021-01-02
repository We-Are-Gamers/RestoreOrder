function scr_default_do_action(card_id){
	for(var i = 0; i < ds_list_size(card_id.collected_targets); ++i) {
		var target = ds_list_find_value(card_id.collected_targets, i);
		target._health += card_id.healing;
		
		target.physical_defense += card_id.physical_defense;
		target.magic_defense += card_id.magic_defense;
		
		target.physical_atk_mult *= card_id.buff_physical_atk;
		target.magic_atk_mult *= card_id.buff_magic_atk;
		
		var physical_damage = floor(card_id.physical_atk * card_id.owner.physical_atk_mult);
		target.physical_defense -= physical_damage;
		if(target.physical_defense < 0) {
			target._health += target.physical_defense;
			show_debug_message(target.name + " hit for " + string(-target.physical_defense) + " physcial damage.");
			target.physical_defense = 0;
		}
		
		var magic_damage = floor(card_id.magic_atk * card_id.owner.magic_atk_mult);
		target.magic_defense -= magic_damage;
		if(target.magic_defense < 0) {
			target._health += target.magic_defense;
			show_debug_message(target.name + " hit for " + string(-target.magic_defense) + " magaic damage.");
			target.magic_defense = 0;
		}
		
		
	}
}