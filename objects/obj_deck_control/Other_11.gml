/// @description remove deck and cards for dead character

switch(dead_character_type) {
	case "Barbarian":
		ds_list_clear(avail_cards_barbarian);
		ds_list_clear(disc_cards_barbarian);
		play_cards_barbarian[0] = false;
		play_cards_barbarian[1] = false;
		deal_barbarian = false;
		break;
	case "Paladin":
		ds_list_clear(avail_cards_paladin);
		ds_list_clear(disc_cards_paladin);
		play_cards_paladin[0] = false;
		play_cards_paladin[1] = false;
		deal_paladin = false;
		break;
	case "Witch":
		ds_list_clear(avail_cards_witch);
		ds_list_clear(disc_cards_witch);
		play_cards_witch[0] = false;
		play_cards_witch[1] = false;
		deal_witch = false;
		break;
	case "Cleric":
		ds_list_clear(avail_cards_cleric);
		ds_list_clear(disc_cards_cleric);
		play_cards_cleric[0] = false;
		play_cards_cleric[1] = false;
		deal_cleric = false;
		break;
}

var card_instances = ds_list_create();
for(var i = 0; i < instance_number(obj_card); i++) {
	ds_list_add(card_instances, instance_find(obj_card, i));
}

for(var i = 0; i < ds_list_size(card_instances); i++) {
	with(ds_list_find_value(card_instances, i)) {
		if(character_type == other.dead_character_type) {
			instance_destroy();
		}
	}
}