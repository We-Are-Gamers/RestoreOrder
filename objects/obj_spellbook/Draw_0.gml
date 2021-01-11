draw_self();
if(selected_character_id != noone) {
	draw_text_transformed_colour(x+200, y+75, selected_character_id.name, 2, 2, 0, c_black, c_black, c_black, c_black, 1);
}