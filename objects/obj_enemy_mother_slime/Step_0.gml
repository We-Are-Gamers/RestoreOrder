event_inherited();

if(cur_health <= 0) {
	instance_create_layer(640, 150, "Instances", obj_enemy_slime);
	instance_create_layer(1280, 150, "Instances", obj_enemy_slime);
	
	with(scr_create_event_data(obj_event_data_enemies_spawned, self)) {
		enemies_spawned = 2;
		scr_dispatch_blocking(self);
	}

	with(scr_create_event_data(obj_event_data_enemies_killed, self)) {
		enemies_killed = 2;
		scr_dispatch_blocking(self);
	}
	
	instance_destroy();
}