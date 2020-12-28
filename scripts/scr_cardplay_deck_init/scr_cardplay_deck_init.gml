// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cardplay_deck_init(deck, character_type){
	var starting_deck = ds_map_find_value(global.cfg_character_starting_decks, character_type);
	for(i = 0; i < array_length(starting_deck); ++i){
		var card = instance_create_layer(0,0,"Instances", starting_deck[i]);
		with(deck.draw_pile){
			ds_list_add(pile, card);
		}
	}
	with(deck.draw_pile){
		ds_list_shuffle(pile);
	}
}