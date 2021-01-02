// 1) Move all discrd cards to the draw pile
// 2) Shuffle the draw pile
function scr_cardplay_deck_shuffle(deck){
	for(var i = ds_list_size(deck.discard_pile.pile) - 1; i >= 0; --i){
		ds_list_add(deck.draw_pile.pile, ds_list_find_value(deck.discard_pile.pile, i));
		ds_list_delete(deck.discard_pile.pile, i);
	}
	ds_list_shuffle(deck.draw_pile.pile);
}