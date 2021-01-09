var half_width = sprite_width / 2;
var half_height = sprite_height / 2;

draw_set_halign(fa_center);

draw_text(x, y + half_height + 20, name);
draw_text(x, y + half_height + 40, string(_health) + "/" + string(_health_base));

draw_set_halign(fa_left);

draw_text(x - half_width - 120, y - 40, "Phys Atk: " + string(physical_atk) + " * " + string(physical_atk_mult));
draw_text(x - half_width - 120, y - 20, "Mag Atk: " + string(magic_atk) + " * " + string(magic_atk_mult));
draw_text(x - half_width - 120, y + 20, "Phys Def: " + string(physical_defense));
draw_text(x - half_width - 120, y + 40, "Mag Def: " + string(magic_defense));

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