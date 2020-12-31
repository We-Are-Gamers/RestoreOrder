function scr_encounter_enemy_spawned(subscriber_id, event_data_id) {
	subscriber_id.enemies += event_data_id.enemies_spawned;
}