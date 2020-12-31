function scr_encounter_enemy_killed(subscriber_id, event_data_id) {
	subscriber_id.enemies -= event_data_id.enemies_killed;
	with(subscriber_id) {
		if(enemies <= 0) {
			scr_unsubscribe_from_event(enum_pub_sub_event_types.enemies_spawned, self);
			scr_unsubscribe_from_event(enum_pub_sub_event_types.enemies_killed, self);
			instance_destroy();
		}
	}
}