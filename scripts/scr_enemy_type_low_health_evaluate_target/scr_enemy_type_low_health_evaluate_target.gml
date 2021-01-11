function scr_enemy_type_low_health_evaluate_target(enemy_id, event_data_id) {
	var target_list = ds_list_create();
	ds_list_add(target_list, instance_find(obj_character, 0));

	with(obj_character) {
		if(ds_list_find_index(target_list, self) == -1) {
			var current_character_rep = ds_list_find_value(target_list, 0);
			if(self._health == current_character_rep._health) {
				ds_list_add(target_list, self);
			}
			else if(self._health < current_character_rep._health) {
				ds_list_clear(target_list);
				ds_list_add(target_list, self);
			}
		}
	}

	var target_idx = choose(0, ds_list_size(target_list) - 1);
	enemy_id.target = ds_list_find_value(target_list, target_idx);
	show_debug_message("target is " + object_get_name(enemy_id.target.object_index));
}