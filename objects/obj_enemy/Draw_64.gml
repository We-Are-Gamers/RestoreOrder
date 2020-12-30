draw_set_halign(fa_center);

draw_text(x - 200, y - 40, name);
draw_text(x - 200, y - 20, string(cur_health) + "/" + string(max_health));

draw_text(x - 200, y, "Phys Atk: " + string(physical_attack) + " * " + string(phys_atk_mod));
draw_text(x - 200, y + 20, "Mag Atk: " + string(magic_attack) + " * " + string(mag_atk_mod));
draw_text(x - 200, y + 40, "Phys Def: " + string(physical_defense));
draw_text(x - 200, y + 60, "Mag Def: " + string(magic_defense));

if(is_magic) {
	draw_text(x - 200, y + 80, "Magic Enemy");
}

draw_set_halign(fa_left);

if(targetable) {
	var c = c_red;
	
	var sprite_xleft = sprite_width / 2 + 8;
	var sprite_yleft = sprite_height / 2 + 8;
	var sprite_xright = sprite_xleft - 20;
	var sprite_yright = sprite_yleft - 20;
	
	draw_rectangle_color(x - sprite_xleft, y - sprite_yleft, x - sprite_xright, y - sprite_yright, c, c_black, c_black, c_black, true);
	draw_rectangle_color(x + sprite_xleft, y - sprite_yleft, x + sprite_xright, y - sprite_yright, c_black, c, c_black, c_black, true);
	draw_rectangle_color(x + sprite_xleft, y + sprite_yleft, x + sprite_xright, y + sprite_yright, c_black, c_black, c, c_black, true);
	draw_rectangle_color(x - sprite_xleft, y + sprite_yleft, x - sprite_xright, y + sprite_yright, c_black, c_black, c_black, c, true);
}