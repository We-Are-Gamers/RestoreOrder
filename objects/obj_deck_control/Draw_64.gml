draw_set_halign(fa_center);

draw_text(713, 500, "Deck: " + string(ds_list_size(avail_cards_barbarian)));
draw_text(713, 675, "Discard: " + string(ds_list_size(disc_cards_barbarian)));

draw_text(521, 500, "Deck: " + string(ds_list_size(avail_cards_paladin)));
draw_text(521, 675, "Discard: " + string(ds_list_size(disc_cards_paladin)));

draw_text(329, 500, "Deck: " + string(ds_list_size(avail_cards_witch)));
draw_text(329, 675, "Discard: " + string(ds_list_size(disc_cards_witch)));

draw_text(137, 500, "Deck: " + string(ds_list_size(avail_cards_cleric)));
draw_text(137, 675, "Discard: " + string(ds_list_size(disc_cards_cleric)));

draw_set_halign(fa_left);