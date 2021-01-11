function scr_cardplay_deck_discard_helper(deck_id, card_id){
	var card = undefined;
	if(!is_undefined(card_id)) {
		card = card_id.dispatcher_id;
	}
	var hand = deck_id.hand;
	for(var i = 0; i < deck_id.hand_size; i++) {
		if(instance_exists(array_get(hand.cards, i)) and (is_undefined(card) or array_get(hand.cards, i).id == card.id)) {
			scr_card_hide(array_get(hand.cards, i));
			array_set(hand.cards, i, noone);
			ds_list_add(deck_id.discard_pile.pile, card);
		}
	}
}