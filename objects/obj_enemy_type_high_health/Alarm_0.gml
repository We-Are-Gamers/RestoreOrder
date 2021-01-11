/// @description target the highest health character
var card = array_get(deck.hand.cards, 0);
ds_list_add(card.collected_targets, target);
script_execute(card.do_action_script, card);
ds_list_clear(card.collected_targets);

with(card) {
	with(scr_create_event_data(obj_event_data_card_discard, self)) {
		scr_dispatch_blocking(self);
	}
}
scr_resume_smallness(self);
with(scr_create_event_data(obj_event_data_turn_step, self)) {
	scr_dispatch_blocking(self);
}