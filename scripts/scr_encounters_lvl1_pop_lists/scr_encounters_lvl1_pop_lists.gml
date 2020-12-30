// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_encounters_lvl1_pop_lists(small_group, large_group, champion){
	// small groups
	ds_list_add(small_group, rm_lvl1_small_group_1);
	ds_list_add(small_group, rm_lvl1_small_group_2);
	ds_list_add(small_group, rm_lvl1_small_group_3);
	
	// large groups
	ds_list_add(large_group, rm_lvl1_large_group_1);
	
	// champions
	ds_list_add(champion, rm_lvl1_champ_1);
}