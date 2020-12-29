global.cfg_encounters_map = ds_map_create();

lvl1 = ds_map_create();
lvl2 = ds_map_create();
lvl3 = ds_map_create();
lvl4 = ds_map_create();

lvl1_small_group = ds_list_create();
lvl1_large_group = ds_list_create();
lvl1_champion = ds_list_create();

lvl2_small_group = ds_list_create();
lvl2_large_group = ds_list_create();
lvl2_champion = ds_list_create();
lvl2_commander = ds_list_create();

lvl3_small_group = ds_list_create();
lvl3_large_group = ds_list_create();
lvl3_champion = ds_list_create();
lvl3_commander = ds_list_create();

lvl4_small_group = ds_list_create();
lvl4_large_group = ds_list_create();
lvl4_champion = ds_list_create();
lvl4_commander = ds_list_create();

populate_lvl1_lists(lvl1_small_group, lvl1_large_group, lvl1_champion);
populate_lvl2_lists(lvl2_small_group, lvl2_large_group, lvl2_champion, lvl2_commander);
populate_lvl3_lists(lvl3_small_group, lvl3_large_group, lvl3_champion, lvl3_commander);
populate_lvl4_lists(lvl4_small_group, lvl4_large_group, lvl4_champion, lvl4_commander);

add_level_lists(lvl1, [lvl1_small_group, lvl1_large_group, lvl1_champion]);
add_level_lists(lvl2, [lvl2_small_group, lvl2_large_group, lvl2_champion, lvl2_commander]);
add_level_lists(lvl3, [lvl3_small_group, lvl3_large_group, lvl3_champion, lvl3_commander]);
add_level_lists(lvl4, [lvl4_small_group, lvl4_large_group, lvl4_champion, lvl4_commander]);

add_level_maps(global.cfg_encounters_map, [lvl1, lvl2, lvl3, lvl4]);

function add_level_lists(level_map, level_lists) {
	for(var i = 1; i <= array_length(level_lists); i++) {
		ds_map_add_list(level_map, i, level_lists[i - 1]);
	}
}

function add_level_maps(encounter_map, level_maps) {
	for(var i = 1; i <= array_length(level_maps); i++) {
		ds_map_add_map(encounter_map, i, level_maps[i - 1]);
	}
}

show_debug_message(string(ds_map_find_value(global.cfg_encounters_map, 1)));