scr_subscribe_to_event(enum_pub_sub_event_types.card_discard, scr_cardplay_deck_card_discard, self);
scr_subscribe_to_event(enum_pub_sub_event_types.hand_fill, scr_cardplay_deck_hand_fill, self);

draw_pile = instance_create_layer(x,y,"Instances", obj_cardplay_draw_pile);
hand = instance_create_layer(x,y,"Instances", obj_cardplay_hand);
discard_pile = instance_create_layer(x,y,"Instances", obj_cardplay_discard_pile);