if(instance_exists(obj_encounter) && game_start) {
	turn_control = instance_create_layer(0, 0, "Instances", obj_turn_control);
	
	instance_create_layer(384, 700, "Instances", obj_cleric);
	instance_create_layer(768, 750, "Instances", obj_witch);
	instance_create_layer(1152, 750, "Instances", obj_paladin);
	instance_create_layer(1536, 700, "Instances", obj_barbarian);
	game_start = false;
}