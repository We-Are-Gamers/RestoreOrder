function scr_unsubscribe_from_event(pub_sub_event_type, subscriber_id) {
	if(!ds_map_exists(global.cfg_published_events_map, pub_sub_event_type)) {
		return;
	}
	
	var list = ds_map_find_value(global.cfg_published_events_map, pub_sub_event_type);
	for(var i = 0; i < ds_list_size(list); i++) {
		var subscribed_instance = ds_list_find_value(list, i);
		if(subscribed_instance.subscriber_instance_id = subscriber_id) {
			ds_list_delete(list, i);
			return;
		}
	}
}