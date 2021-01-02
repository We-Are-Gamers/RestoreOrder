function scr_cardplay_deck_hand_fill(deck_id, event_data_id){
	var hand = deck_id.hand;
	if(!instance_exists(hand.left)) {
		hand.left = scr_cardplay_deck_draw_card(deck_id);
		// bring the card into visible area
		hand.left.x = hand.x-40;
		hand.left.y = hand.y;
	}
	if(!instance_exists(hand.right)) {
		hand.right = scr_cardplay_deck_draw_card(deck_id);
		hand.right.visible = true;
		
		hand.right.x = hand.x+40;
		hand.right.y = hand.y;
	}
}