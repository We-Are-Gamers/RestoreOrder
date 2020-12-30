/// @description player plays a card

with(target) {
	if(object_get_name(object_get_parent(object_index)) == "obj_character") {
		if(other.selected_card.buff_atk > 0) {
			if(is_magic) {
				magic_atk_mod *= other.selected_card.buff_atk;
			}
			else {
				physical_atk_mod *= other.selected_card.buff_atk;
			}
		}
		
		physical_defense += other.selected_card.physical_defense;
		magic_defense += other.selected_card.magic_defense;
		cur_health += other.selected_card.healing;
		if(cur_health > max_health) {
			cur_health = max_health;
		}
	}
	else if(object_get_name(object_get_parent(object_index)) == "obj_enemy") {
		var physical_modifier = 1;
		var magic_modifier = 1;
		if(is_magic) {
			physical_modifier = 0.25;
		}
		else {
			magic_modifier = 0.25;
		}
		
		if(other.selected_card.is_magic && other.selected_card.debuff_atk > 0) {
			mag_atk_mod *= other.selected_card.debuff_atk;
			show_debug_message(name + " magic attack debuffed");
		}
		else if(!other.selected_card.is_magic && other.selected_card.debuff_atk > 0) {
			phys_atk_mod *= other.selected_card.debuff_atk;
			show_debug_message(name + " physical attack debuffed");
		}
				
		physical_defense -= other.selected_card.physical_atk * other.selected_card.character.physical_atk_mod * physical_modifier;
		if(physical_defense < 0) {
			cur_health += physical_defense;
			show_debug_message(name + " hit for " + string(physical_defense * -1) + " damage");
			physical_defense = 0;
		}
		
		magic_defense -= other.selected_card.magic_atk * other.selected_card.character.magic_atk_mod * magic_modifier;
		if(magic_defense < 0) {
			cur_health += magic_defense;
			show_debug_message(name + " hit for " + string(magic_defense * -1) + " damage");
			magic_defense = 0;
		}
	}
}

if(selected_card.target_type == "Character") {
	for(var i = 0; i < instance_number(obj_character); i++) {
		var character = instance_find(obj_character, i);
		character.targetable = false;
	}
}
else if(selected_card.target_type == "Enemy") {
	for(var i = 0; i < instance_number(obj_enemy); i++) {
		var enemy = instance_find(obj_enemy, i);
		enemy.targetable = false;
	}
}

for(var i = 0; i < instance_number(obj_card); i++) {
	var card = instance_find(obj_card, i);
	card.targetable = true;
} 

with(deck_control) {
	switch(other.selected_card.character_type) {
		case "Barbarian":
			play_cards_barbarian[other.selected_card.position] = false;
			ds_list_add(disc_cards_barbarian, other.selected_card.object_index);
			break;
		case "Paladin":
			play_cards_paladin[other.selected_card.position] = false;
			ds_list_add(disc_cards_paladin, other.selected_card.object_index);
			break;
		case "Witch":
			play_cards_witch[other.selected_card.position] = false;
			ds_list_add(disc_cards_witch, other.selected_card.object_index);
			break;
		case "Cleric":
			play_cards_cleric[other.selected_card.position] = false;
			ds_list_add(disc_cards_cleric, other.selected_card.object_index);
			break;
	}
}

global.mana -= 1;
if(global.mana <= 0) {
	turn_end = true;
}

with(selected_card) {
	instance_destroy();
}