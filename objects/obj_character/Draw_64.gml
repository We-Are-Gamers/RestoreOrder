draw_set_halign(fa_center);

draw_text(gui_x, 200, "Phys Atk Mult: " + string(physical_atk_mult));
draw_text(gui_x, 220, "Mag Atk Mult: " + string(magic_atk_mult));
draw_text(gui_x, 240, "Phys Def: " + string(physical_defense));
draw_text(gui_x, 260, "Mag Def: " + string(magic_defense));

draw_text(gui_x, 440, name);
draw_text(gui_x, 460, string(cur_health) + "/" + string(max_health));

draw_set_halign(fa_left);

if(targetable == true) {
	var c = c_green;
	
	var sprite_xleft = sprite_width / 2 + 8;
	var sprite_yleft = sprite_height / 2 + 8;
	var sprite_xright = sprite_xleft - 20;
	var sprite_yright = sprite_yleft - 20;
	
	draw_rectangle_color(x - sprite_xleft, y - sprite_yleft, x - sprite_xright, y - sprite_yright, c, c_black, c_black, c_black, true);
	draw_rectangle_color(x + sprite_xleft, y - sprite_yleft, x + sprite_xright, y - sprite_yright, c_black, c, c_black, c_black, true);
	draw_rectangle_color(x + sprite_xleft, y + sprite_yleft, x + sprite_xright, y + sprite_yright, c_black, c_black, c, c_black, true);
	draw_rectangle_color(x - sprite_xleft, y + sprite_yleft, x - sprite_xright, y + sprite_yright, c_black, c_black, c_black, c, true);
}