draw_set_halign(fa_center);

draw_text(1050, 500, "Phys Atk: " + string(physical_attack));
draw_text(1150, 500, "Mod: " + string(phys_atk_mod));
draw_text(1050, 520, "Mag Atk: " + string(magic_attack));
draw_text(1150, 520, "Mod: " + string(mag_atk_mod));
draw_text(1050, 540, "Phys Def: " + string(physical_defense));
draw_text(1050, 560, "Mag Def: " + string(magic_defense));

draw_text(1050, 440, name);
draw_text(1050, 460, string(cur_health) + "/" + string(max_health));

if(is_magic) {
	draw_text(1050, 600, "Magic Enemy");
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