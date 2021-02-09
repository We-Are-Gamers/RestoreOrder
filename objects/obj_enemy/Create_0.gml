event_inherited();
deck = instance_create_layer(x, y + 220, "Instances", obj_cardplay_deck);
deck.hand_size = 1;
scr_cardplay_deck_init(deck, self);
draw_target_line = true;