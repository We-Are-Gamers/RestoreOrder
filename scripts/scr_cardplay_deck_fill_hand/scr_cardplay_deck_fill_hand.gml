// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cardplay_deck_fill_hand(deck){
	var hand = deck.hand;
	if(!instance_exists(hand.left_card)) {
		hand.left_card = scr_cardplay_deck_draw_card(deck);
	}
	if(!instance_exists(hand.right_card)) {
		hand.right_card = scr_cardplay_deck_draw_card(deck);
	}
}