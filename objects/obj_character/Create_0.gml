event_inherited();
deck = instance_create_layer(x, y + 183, "Instances", obj_cardplay_deck);
deck.hand_size = 2;
scr_cardplay_deck_init(deck, self);