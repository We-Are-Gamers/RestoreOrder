function scr_cardplay_deck_card_discard(deck_id, event_data_id){
	var card = event_data_id.dispatcher_id;
	var hand = deck_id.hand;
	for(var i = 0; i < deck_id.hand_size; i++) {
		if(instance_exists(array_get(hand.cards, i)) and array_get(hand.cards, i).id == card.id) {
			scr_card_hide(array_get(hand.cards, i));
			array_set(hand.cards, i, noone);
			ds_list_add(deck_id.discard_pile.pile, card);
		}
	}
	//if(instance_exists(hand.left) and hand.left.id == card.id) {
	//	scr_card_hide(hand.left);
	//	hand.left = noone;
	//	ds_list_add(deck_id.discard_pile.pile, card);
	//}
	//if(instance_exists(hand.right) and hand.right.id == card.id) {
	//	scr_card_hide(hand.right);
	//	hand.right = noone;
	//	ds_list_add(deck_id.discard_pile.pile, card);
	//}
}