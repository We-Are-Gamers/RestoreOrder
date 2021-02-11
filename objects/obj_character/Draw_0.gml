draw_self();

var half_width = sprite_width / 2;
//var half_height = sprite_height / 2;

draw_text(x - half_width - 60, y + 20, name);
draw_text(x - half_width - 60, y + 40, string(_health) + "/" + string(_health_base));


draw_rectangle_color(x - 100, y + 74, x + 100, y + 84, c_white,c_white,c_white,c_white, false);

draw_text(x - 200, y + 120, "Atk Mult: " + string(atk_mult));
draw_text(x - 200, y + 140, "Def: " + string(defense));

//var c = c_white;
//draw_rectangle_color(x - 100, y + 99, x + 100, y + 267, c, c, c, c, true);
draw_sprite(spr_card_mat, 0, x, y + 94);

if(targetable == true) {
	draw_sprite(spr_targetable, 0, x, y);
	//var c = c_green;
	
	//var sprite_xleft = half_width + 10;
	//var sprite_yleft = half_height + 10;
	//var sprite_xright = sprite_xleft - 10;
	//var sprite_yright = sprite_yleft - 10;
	
	//draw_rectangle_color(x - sprite_xleft, y - sprite_yleft, x - sprite_xright, y - sprite_yright, c, c, c_black, c, true);
	//draw_rectangle_color(x + sprite_xleft, y - sprite_yleft, x + sprite_xright, y - sprite_yright, c, c, c, c_black, true);
	//draw_rectangle_color(x + sprite_xleft, y + sprite_yleft, x + sprite_xright, y + sprite_yright, c_black, c, c, c, true);
	//draw_rectangle_color(x - sprite_xleft, y + sprite_yleft, x - sprite_xright, y + sprite_yright, c_black, c, c, c, true);
}