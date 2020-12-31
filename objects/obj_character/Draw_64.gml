var half_width = sprite_width / 2;
var half_height = sprite_height / 2;

draw_set_halign(fa_center);

draw_text(x, y + half_height + 20, name);
draw_text(x, y + half_height + 40, string(cur_health) + "/" + string(max_health));

draw_set_halign(fa_left);

draw_text(x - half_width - 100, y - 40, "PA Mult: " + string(physical_atk_mult));
draw_text(x - half_width - 100, y - 20, "MA Mult: " + string(magic_atk_mult));
draw_text(x - half_width - 100, y + 20, "Phys Def: " + string(physical_defense));
draw_text(x - half_width - 100, y + 40, "Mag Def: " + string(magic_defense));

var c = c_white;
draw_rectangle_color(x - 100, y + 136, x + 100, y + 304, c, c, c, c, true);

if(targetable == true) {
	var c = c_green;
	
	var sprite_xleft = half_width + 8;
	var sprite_yleft = half_height + 8;
	var sprite_xright = sprite_xleft - 20;
	var sprite_yright = sprite_yleft - 20;
	
	draw_rectangle_color(x - sprite_xleft, y - sprite_yleft, x - sprite_xright, y - sprite_yright, c, c_black, c_black, c_black, true);
	draw_rectangle_color(x + sprite_xleft, y - sprite_yleft, x + sprite_xright, y - sprite_yright, c_black, c, c_black, c_black, true);
	draw_rectangle_color(x + sprite_xleft, y + sprite_yleft, x + sprite_xright, y + sprite_yright, c_black, c_black, c, c_black, true);
	draw_rectangle_color(x - sprite_xleft, y + sprite_yleft, x - sprite_xright, y + sprite_yright, c_black, c_black, c_black, c, true);
}