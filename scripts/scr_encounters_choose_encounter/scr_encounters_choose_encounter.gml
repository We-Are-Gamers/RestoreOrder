function scr_encounters_choose_encounter(level){
	do {
		var random_list = choose(
							enum_encounter_types.small_group,
							enum_encounter_types.large_group,
							enum_encounter_types.champion,
							enum_encounter_types.commander
						  );
	} until (!(level == enum_level_names.electric && random_list == enum_encounter_types.commander));
	var level_list = ds_map_find_value(global.cfg_encounters_map, random_list);
	
	var random_encounter = irandom_range(0, ds_list_size(level_list) - 1);
	var encounter = ds_list_find_value(level_list, random_encounter);
	
	return encounter
}