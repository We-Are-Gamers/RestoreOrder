function scr_cardplay_deck_hand_fill_helper(deck_id) {
	var hand = deck_id.hand;
	var middle = 0;
	if(deck_id.hand_size > 1) {
		middle = ((deck_id.hand_size * 32) + ((deck_id.hand_size - 1) * 16)) / 2;
	}
	for(var i = 0; i < deck_id.hand_size; i++) {
		if(!instance_exists(array_get(hand.cards, i))) {
			array_set(hand.cards, i, scr_cardplay_deck_draw_card(deck_id));
			// bring the card into the visible area
			var card = array_get(hand.cards, i);
			if(instance_exists(card)) {
				card.x = (hand.x - middle) + (80 * i);
				card.y = hand.y;
			}
		}
	}
}