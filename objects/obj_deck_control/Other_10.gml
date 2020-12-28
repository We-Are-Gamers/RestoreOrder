/// @description draw cards from each deck

//for(var i = 0; i < ds_list_size(cards); i++) {
//	with(ds_list_find_value(cards, i)) {
//		switch(character_type) {
//			case "Barbarian":
//				ds_list_add(other.disc_cards_barbarian, object_index);
//				break;
//			case "Paladin":
//				ds_list_add(other.disc_cards_paladin, object_index);
//				break;
//			case "Witch":
//				ds_list_add(other.disc_cards_witch, object_index);
//				break;
//			case "Cleric":
//				ds_list_add(other.disc_cards_cleric, object_index);
//				break;
//		}
//		instance_destroy();
//	}
//}

var disc_size = 0;
var card = obj_card_barbarian_attack;
if(ds_list_empty(avail_cards_barbarian) || empty_card_count(play_cards_barbarian) > ds_list_size(avail_cards_barbarian)) {
	disc_size = ds_list_size(disc_cards_barbarian);
	repeat(disc_size) {
		card = ds_list_find_value(disc_cards_barbarian, 0);
		ds_list_add(avail_cards_barbarian, card);
		ds_list_delete(disc_cards_barbarian, 0);
	}
	ds_list_shuffle(avail_cards_barbarian);
}

if(ds_list_empty(avail_cards_paladin) || empty_card_count(play_cards_paladin) > ds_list_size(avail_cards_paladin)) {
	disc_size = ds_list_size(disc_cards_paladin);
	repeat(disc_size) {
		card = ds_list_find_value(disc_cards_paladin, 0)
		ds_list_add(avail_cards_paladin, card);
		ds_list_delete(disc_cards_paladin, 0);
	}
	ds_list_shuffle(avail_cards_paladin);
}

if(ds_list_empty(avail_cards_witch) || empty_card_count(play_cards_witch) > ds_list_size(avail_cards_witch)) {
	disc_size = ds_list_size(disc_cards_witch);
	repeat(disc_size) {
		card = ds_list_find_value(disc_cards_witch, 0)
		ds_list_add(avail_cards_witch, card);
		ds_list_delete(disc_cards_witch, 0);
	}
	ds_list_shuffle(avail_cards_witch);
}

if(ds_list_empty(avail_cards_cleric) || empty_card_count(play_cards_cleric) > ds_list_size(avail_cards_cleric)) {
	disc_size = ds_list_size(disc_cards_cleric);
	repeat(disc_size) {
		card = ds_list_find_value(disc_cards_cleric, 0)
		ds_list_add(avail_cards_cleric, card);
		ds_list_delete(disc_cards_cleric, 0);
	}
	ds_list_shuffle(avail_cards_cleric);
}

if(deal_barbarian == true && empty_card_count(play_cards_barbarian) > 0) {
	var barbarian = instance_find(obj_barbarian, 0);
	for(var i = 0; i < 2; i++) {
		if(play_cards_barbarian[i] == false) {	
			var card_obj = ds_list_find_value(avail_cards_barbarian, 0);
			var card = instance_create_layer(676 + 74 * i, 600, "Instances", card_obj);
			card.position = i;
			card.character = barbarian;
			ds_list_delete(avail_cards_barbarian, 0);
			play_cards_barbarian[i] = true;
		}
	}
}

if(deal_paladin == true && empty_card_count(play_cards_paladin) > 0) {
	var paladin = instance_find(obj_paladin, 0);
	for(var i = 0; i < 2; i++) {
		if(play_cards_paladin[i] == false) {
			var card_obj = ds_list_find_value(avail_cards_paladin, 0);
			var card = instance_create_layer(484 + 74 * i, 600, "Instances", card_obj);
			card.position = i;
			card.character = paladin;
			ds_list_delete(avail_cards_paladin, 0);
			play_cards_paladin[i] = true;
		}
	}
}
	
if(deal_witch == true && empty_card_count(play_cards_witch) > 0) {
	var witch = instance_find(obj_witch, 0);
	for(var i = 0; i < 2; i++) {
		if(play_cards_witch[i] == false) {
			var card_obj = ds_list_find_value(avail_cards_witch, 0);
			var card = instance_create_layer(292 + 74 * i, 600, "Instances", card_obj);
			card.position = i;
			card.character = witch;
			ds_list_delete(avail_cards_witch, 0);
			play_cards_witch[i] = true;
		}	
	}
}

if(deal_cleric == true && empty_card_count(play_cards_cleric) > 0) {
	var cleric = instance_find(obj_cleric, 0);
	for(var i = 0; i < 2; i++) {
		if(play_cards_cleric[i] == false) {
			var card_obj = ds_list_find_value(avail_cards_cleric, 0);
			var card = instance_create_layer(100 + 74 * i, 600, "Instances", card_obj);
			card.position = i;
			card.character = cleric;
			ds_list_delete(avail_cards_cleric, 0);
			play_cards_cleric[i] = true;
		}
	}
}