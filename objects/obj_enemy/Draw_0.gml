if(targetable) {
	shader_set(sdr_modify_colors);
	shader_set_uniform_f(global.sdr_modify_colors, 1.0, 0.0, 0.0, 1.0);
}

draw_self();

if(targetable) {
	shader_reset();
}

var half_width = sprite_width / 2;

draw_text(x - half_width - 120, y - 40, string(_health) + "/" + string(_health_base));

draw_text(x - half_width - 120, y - 20, "Atk Mult: " + string(atk_mult));
draw_text(x - half_width - 120, y, "Def: " + string(defense));

if(draw_target_line) {
	draw_line(x, y, target.x, target.y);
}