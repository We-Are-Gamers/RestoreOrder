// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cardplay_deck_init(deck, character_type){
	var starting_deck = ds_map_find_value(global.cfg_character_starting_decks, character_type);
	for(i = 0; i < array_length(starting_deck); ++i){
		var card = instance_create_layer(deck.x,deck.y,"Instances", starting_deck[i]);
		ds_list_add(deck.draw_pile.pile, card);
	}
	scr_cardplay_deck_shuffle(deck);
	scr_cardplay_deck_fill_hand(deck);
}