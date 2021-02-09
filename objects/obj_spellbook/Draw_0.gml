draw_self();
if(selected_character_id != noone) {
	draw_text_transformed_colour(x+200, y+75, selected_character_id.name, 2, 2, 0, c_black, c_black, c_black, c_black, 1);
}

if(!surface_exists(spellbook_surface)) {
	spellbook_surface = surface_create(208, 1024);
	surface_set_target(spellbook_surface);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}

surface_set_target(spellbook_surface);
draw_clear_alpha(c_black, 0);
for(var i = 0; i < array_length(spellbook_deck); ++i) {
	var sprite = spellbook_deck[i].sprite_index;
	draw_sprite(sprite, 0, 64 * (i % 3) + 32, 136 * int64(i / 3) + 64);
}
surface_reset_target();
draw_surface_part(spellbook_surface, 0, scroll_y, 208, 512, x + 149, y + 128);