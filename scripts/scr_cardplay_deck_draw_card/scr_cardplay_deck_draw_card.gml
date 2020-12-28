// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Draw one card off the draw_pile
// Shuffle the discard into the draw pile if there aren't any
function scr_cardplay_deck_draw_card(deck){
	if(ds_list_size(deck.draw_pile.pile) == 0){
		scr_cardplay_deck_shuffle(deck);
	}
	var draw_pile_size = ds_list_size(deck.draw_pile.pile)-1;
	var card = ds_list_find_value(deck.draw_pile.pile, draw_pile_size);
	ds_list_delete(deck.draw_pile.pile, draw_pile_size);
	return card;
}