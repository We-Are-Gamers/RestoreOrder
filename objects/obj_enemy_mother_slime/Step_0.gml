event_inherited();

if(cur_health <= 0) {
	instance_create_layer(640, 150, "Instances", obj_enemy_slime);
	instance_create_layer(1280, 150, "Instances", obj_enemy_slime);
	
	instance_destroy();
}