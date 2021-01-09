function scr_cardplay_deck_init(deck, being_id){
	var starting_deck = ds_map_find_value(global.cfg_being_starting_decks, being_id.being_type);
	for(var i = 0; i < array_length(starting_deck); ++i){
		var card = instance_create_layer(deck.x,deck.y,"Instances", starting_deck[i]);
		card.owner = being_id;
		scr_card_hide(card);
		ds_list_add(deck.draw_pile.pile, card);
	}
	deck.hand.cards = array_create(deck.hand_size, noone);
	scr_cardplay_deck_shuffle(deck);
	scr_cardplay_deck_hand_fill(deck, noone); // this is probably bad
}