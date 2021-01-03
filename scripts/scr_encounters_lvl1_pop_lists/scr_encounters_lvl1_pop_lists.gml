function scr_encounters_lvl1_pop_lists(small_group, large_group, champion){
	// small groups
	ds_list_add(small_group, obj_encounter_lvl1_small_group_slime);
	
	// large groups
	ds_list_add(large_group, obj_encounter_lvl1_large_group_slime);
	
	// champions
	ds_list_add(champion, obj_encounter_lvl1_champion_mother_slime);
}