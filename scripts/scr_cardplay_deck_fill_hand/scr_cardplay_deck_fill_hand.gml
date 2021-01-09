function scr_cardplay_deck_hand_fill(deck_id, event_data_id){
	var hand = deck_id.hand;
	var middle = ((deck_id.hand_size * 64) + (deck_id.hand_size - 1 * 8)) / 2
	for(var i = 0; i < deck_id.hand_size; i++) {
		if(!instance_exists(hand.cards[i])) {
			array_set(hand.cards, i, scr_cardplay_deck_draw_card(deck_id));
			// bring the card into the visible area
			var card = array_get(hand.cards, i);
			card.x = (hand.x - middle) + 64 * i + 8;
			card.y = hand.y;
		}
	}
	//if(!instance_exists(hand.left)) {
	//	hand.left = scr_cardplay_deck_draw_card(deck_id);
	//	// bring the card into visible area
	//	hand.left.x = hand.x-40;
	//	hand.left.y = hand.y;
	//}
	//if(!instance_exists(hand.right)) {
	//	hand.right = scr_cardplay_deck_draw_card(deck_id);
	//	hand.right.visible = true;
		
	//	hand.right.x = hand.x+40;
	//	hand.right.y = hand.y;
	//}
}