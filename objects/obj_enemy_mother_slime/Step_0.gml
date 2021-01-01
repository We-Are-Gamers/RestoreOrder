event_inherited();

if(cur_health <= 0) {
	instance_create_layer(640, 150, "Instances", obj_enemy_slime);
	instance_create_layer(1280, 150, "Instances", obj_enemy_slime);
	
	var enemies_spawned_instance = instance_create_layer(x, y, "Instances", obj_event_data_enemies_spawned);
	var enemies_killed_instance = instance_create_layer(x, y, "Instances", obj_event_data_enemies_killed);
	
	enemies_spawned_instance.dispatcher_instance_id = self;
	enemies_spawned_instance.enemies_spawned = 2;
	
	enemies_killed_instance.dispatcher_instance_id = self;
	enemies_killed_instance.enemies_killed = 1;
	
	scr_dispatch_event(enemies_spawned_instance);
	scr_dispatch_event(enemies_killed_instance);
	
	instance_destroy();
}