function scr_encounters_map_add_level_lists(level_map, level_lists){
	for(var i = 0; i < array_length(level_lists); i++) {
			ds_map_add_list(level_map, i, level_lists[i]);
		}
}