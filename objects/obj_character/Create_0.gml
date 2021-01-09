event_inherited();
deck = instance_create_layer(x, y+220, "Instances", obj_cardplay_deck);
scr_cardplay_deck_init(deck, self);
spellbook_button = instance_create_layer(x+30, y, "Instances", obj_spellbook_button);
spellbook_button.character = self;