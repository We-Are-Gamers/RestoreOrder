function scr_subscribe_to_event(published_event, script, sub_id){
	var tuple = [script, sub_id];
	var list = ds_map_find_value(global.cfg_published_events_map, published_event);
	ds_list_add(list, tuple);
}