function choose_encounter(level){
	var level_map = ds_map_find_value(global.cfg_encounters_map, level);
	
	do {
		var random_list = choose(
							enum_encounter_types.small_group,
							enum_encounter_types.large_group,
							enum_encounter_types.champion,
							enum_encounter_types.commander
						  );
	} until (!(level == 1 && random_list == enum_encounter_types.commander));
	var level_list = ds_map_find_value(level_map, random_list);
	
	var random_encounter = irandom_range(0, ds_list_size(level_list) - 1);
	var encounter = ds_list_find_value(level_list, random_encounter);
	
	room_goto(encounter);
}