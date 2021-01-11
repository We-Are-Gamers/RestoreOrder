if(targetable) {
	with(scr_create_event_data(obj_event_data_hand_discard, self)) {
		deck = other.deck;
		scr_dispatch_blocking(self);
	}
}