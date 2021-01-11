function scr_dispatch_helper(event_data_id, is_blocking){
	var pub_sub_event_type = event_data_id.pub_sub_event_type;
	
	// If there isn't a list of subscriptions for this type, do nothing.
	if(!ds_map_exists(global.cfg_published_events_map, pub_sub_event_type)) {
		show_debug_message("*********** Warning: event dispatched, but no listeners. ************");
		show_debug_message("Event type: " + string(pub_sub_event_type)); 
		show_debug_message("Did you mean to add listeners for this event?"); 
		return;
	}
	
	var list = ds_map_find_value(global.cfg_published_events_map, pub_sub_event_type);
	
	for(var i = 0; i < ds_list_size(list); i++) {
		var subscription = ds_list_find_value(list, i);
		if(is_blocking) {
			// Block while doing the dispatch
			script_execute(subscription.callback_script_id, subscription.subscriber_id, event_data_id);
		} else {
			// Add the arguments to the dispatch queue for this subscription
			ds_queue_enqueue(subscription.async_dispatch_queue, event_data_id);
			// Non-blocking dispatch
			with(subscription){
				// So alarm[0] = 0 doesn't work
				// I think alarm[0] = 1 schedules for next step
				alarm[0] = 1;
			}
		}
	}
	// scr_create_event_data created this instance, we'll clean it up.
	instance_destroy(event_data_id);
}