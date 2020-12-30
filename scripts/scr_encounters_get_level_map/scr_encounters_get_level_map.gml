// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_encounters_get_level_map(level){
	ds_map_clear(global.cfg_encounters_map);
	small_group = ds_list_create();
	large_group = ds_list_create();
	champion = ds_list_create();
	commander = ds_list_create();
	
	switch(level) {
		case enum_level_names.electric:
			scr_encounters_lvl1_pop_lists(small_group, large_group, champion);
			break;
		case enum_level_names.sea:
			scr_encounters_lvl2_pop_lists(small_group, large_group, champion, commander);
			break;
		case enum_level_names.fire:
			scr_encounters_lvl3_pop_lists(small_group, large_group, champion, commander);
			break;
		case enum_level_names.air:
			scr_encounters_lvl4_pop_lists(small_group, large_group, champion, commander);
			break;
	}
	
	if(level == enum_level_names.electric) {
		scr_encounters_map_add_level_lists(global.cfg_encounters_map, [small_group, large_group, champion]);
	}
	else {
		scr_encounters_map_add_level_lists(global.cfg_encounters_map, [small_group, large_group, champion, commander]);
	}
		
}