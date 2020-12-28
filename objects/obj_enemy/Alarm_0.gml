/// @description enemy turn

var move = choose("mag_def", "phys_def", "mag_atk", "mag_atk", "phys_atk", "phys_atk");

switch(move) {
	case "mag_def":
		magic_defense += 10;
		break;
	case "phys_def":
		physical_defense += 10;
		break;
	case "mag_atk":
		var magic_characters = ds_list_create();
		
		for(var i = 0; i < instance_number(obj_character); i++) {
			var character = instance_find(obj_character, i);
			if(character.is_magic) {
				ds_list_add(magic_characters, character);
			}
		}
		
		if(!ds_list_empty(magic_characters)) {
			var target_character = ds_list_find_value(magic_characters, irandom_range(0, ds_list_size(magic_characters) - 1));
			with(target_character) {
				magic_defense -= other.magic_attack * other.mag_atk_mod;
				if(magic_defense < 0) {
					cur_health += magic_defense;
					show_debug_message(name + " hit for " + string(magic_defense * -1) + " damage");
					cur_health = round(cur_health);
					magic_defense = 0;
				}
				else {
					magic_defense = round(magic_defense);
				}
			}
		}
		
		break;
	case "phys_atk":
		var phys_characters = ds_list_create();
		
		for(var i = 0; i < instance_number(obj_character); i++) {
			var character = instance_find(obj_character, i);
			if(!character.is_magic) {
				ds_list_add(phys_characters, character);
			}
		}
		
		if(!ds_list_empty(phys_characters)) {
			var target_character = ds_list_find_value(phys_characters, irandom_range(0, ds_list_size(phys_characters) - 1));
			with(target_character) {
				physical_defense -= other.physical_attack * other.phys_atk_mod;
				if(physical_defense < 0) {
					cur_health += physical_defense;
					show_debug_message(name + " hit for " + string(physical_defense * -1) + " damage");
					cur_health = round(cur_health);
					physical_defense = 0;
				}
				else {
					physical_defense = round(physical_defense);
				}
			}
		}
		
		break;
}

with(turn_control) {
	next_enemy_turn = true;
	alarm[0] = 60;
}