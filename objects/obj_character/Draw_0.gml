if(targetable) {
	shader_set(sdr_modify_colors);
	shader_set_uniform_f(global.sdr_modify_colors_modifier, 0.0, 1.0, 0.0, 1.0);
	shader_set_uniform_f(global.sdr_modify_colors_position, x, y);
}

draw_self();

if(targetable) {
	shader_reset();
}

var half_width = sprite_width / 2;

draw_text(x - half_width - 60, y + 20, name);
draw_text(x - half_width - 60, y + 40, string(_health) + "/" + string(_health_base));


draw_rectangle_color(x - 100, y + 74, x + 100, y + 84, c_white,c_white,c_white,c_white, false);

draw_text(x - 200, y + 120, "Atk Mult: " + string(atk_mult));
draw_text(x - 200, y + 140, "Def: " + string(defense));

draw_sprite(spr_card_mat, 0, x, y + 94);