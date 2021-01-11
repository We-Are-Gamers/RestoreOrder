draw_self();

var half_width = sprite_width / 2;

draw_text_colour(x - half_width - 120, y - 60, name);
draw_text(x - half_width - 120, y - 40, string(_health) + "/" + string(_health_base));

draw_text(x - half_width - 120, y - 20, "Atk Mult: " + string(atk_mult));
draw_text(x - half_width - 120, y, "Def: " + string(defense));

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