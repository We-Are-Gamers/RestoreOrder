for(var i = 0; i < ds_list_size(pile); ++i){
	instance_destroy(ds_list_find_value(pile, i));
}
ds_list_destroy(pile);