// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_run_turn(enemy){
	with(enemy){
		physical_defense = 0;
		magic_defense = 0;
		
		var move = choose("mag_def", "phys_def", "mag_atk", "mag_atk", "phys_atk", "phys_atk");

		switch(move) {
			case "mag_def":
				magic_defense += 10;
				show_debug_message(name + " raised magic defense by 10");
				break;
			case "phys_def":
				physical_defense += 10;
				show_debug_message(name + " raised physical defense by 10");
				break;
			case "mag_atk":
				var magic_characters = ds_list_create();
		
				for(var i = 0; i < instance_number(obj_character); i++) {
					var character = instance_find(obj_character, i);
					if(character.being_type = enum_being_types.magic) {
						ds_list_add(magic_characters, character);
					}
				}
		
				if(!ds_list_empty(magic_characters)) {
					var target_character = ds_list_find_value(magic_characters, irandom_range(0, ds_list_size(magic_characters) - 1));
					with(target_character) {
						magic_defense -= other.magic_atk * other.magic_atk_mult;
						if(magic_defense < 0) {
							_health += magic_defense;
							show_debug_message(name + " hit for " + string(magic_defense * -1) + " damage");
							magic_defense = 0;
						}
					}
				}
		
				break;
			case "phys_atk":
				var phys_characters = ds_list_create();
		
				for(var i = 0; i < instance_number(obj_character); i++) {
					var character = instance_find(obj_character, i);
					if(character.being_type = enum_being_types.physical) {
						ds_list_add(phys_characters, character);
					}
				}
		
				if(!ds_list_empty(phys_characters)) {
					var target_character = ds_list_find_value(phys_characters, irandom_range(0, ds_list_size(phys_characters) - 1));
					with(target_character) {
						physical_defense -= other.physical_atk * other.physical_atk_mult;
						if(physical_defense < 0) {
							_health += physical_defense;
							show_debug_message(name + " hit for " + string(physical_defense * -1) + " damage");
							physical_defense = 0;
						}
					}
				}
		
				break;
		}
	}
}