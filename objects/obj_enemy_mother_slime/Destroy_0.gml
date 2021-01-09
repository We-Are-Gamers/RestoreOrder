event_inherited();

instance_create_layer(640, 150, "Instances", obj_enemy_slime);
instance_create_layer(1280, 150, "Instances", obj_enemy_slime);
	
with(scr_create_event_data(obj_event_data_enemies_spawned, self)) {
	scr_dispatch_blocking(self);
}

with(scr_create_event_data(obj_event_data_enemies_killed, self)) {
	scr_dispatch_blocking(self);
}