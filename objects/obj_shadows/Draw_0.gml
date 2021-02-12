if(!surface_exists(shadow_surface)) {
	shadow_surface = surface_create(room_width, room_height);
}

surface_set_target(shadow_surface);
gpu_set_fog(true, c_black, 0, 1);
draw_clear_alpha(c_black, 0);

with(obj_being) {
	var skew_x = sprite_width * 1.25;
	var skew_y = sprite_height * .15;
	draw_sprite_pos(sprite_index, image_index, 
					x - (sprite_width/2) - skew_x, y - skew_y,
					x + (sprite_width/2) - (skew_x * .75), y - skew_y,
					x + (sprite_width/2), y,
					x - (sprite_width/2), y, 
					1);
}

gpu_set_fog(false, c_white, 0, 0);
surface_reset_target();

draw_set_alpha(0.75);
draw_surface(shadow_surface, 0, 0);
draw_set_alpha(1);