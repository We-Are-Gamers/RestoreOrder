function scr_cardplay_deck_card_discard(deck_id, event_data_id){
	var card = event_data_id.dispatcher_id;
	var hand = deck_id.hand;
	if(instance_exists(hand.left) and hand.left.id == card.id) {
		scr_card_hide(hand.left);
		hand.left = noone;
		ds_list_add(deck_id.discard_pile.pile, card);
	}
	if(instance_exists(hand.right) and hand.right.id == card.id) {
		scr_card_hide(hand.right);
		hand.right = noone;
		ds_list_add(deck_id.discard_pile.pile, card);
	}
}