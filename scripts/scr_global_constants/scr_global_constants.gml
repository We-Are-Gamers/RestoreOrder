global.large_scale = 1.1;
global.starting_mana = 3;
global.mana = 0;
global.enemy_action_delay = 60;
global.blood = 0;

// shader constants
global.sdr_modify_colors_modifier = shader_get_uniform(sdr_modify_colors, "u_vModifier");
global.sdr_modify_colors_position = shader_get_uniform(sdr_modify_colors, "u_vPosition");