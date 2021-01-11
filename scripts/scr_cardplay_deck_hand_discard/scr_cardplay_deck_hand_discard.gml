function scr_cardplay_deck_hand_discard(deck_id, event_data_id){
	if(deck_id.id == event_data_id.deck.id) {
		scr_cardplay_deck_discard_helper(deck_id, undefined);
	}
}