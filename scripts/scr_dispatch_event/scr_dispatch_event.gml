function scr_dispatch_event(published_event, dispatch_instance_id){
	var list = ds_map_find_value(global.cfg_published_events_map, published_event);
	
	for(var i = 0; i < ds_list_size(list); i++) {
		var sub_tuple = ds_list_find_value(list, i);
		script_execute(sub_tuple[0], sub_tuple[1], dispatch_instance_id);
	}
}