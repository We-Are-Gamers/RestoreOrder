// We trust you to be responsible and not pass in an invalid pub_sub_event_type
// Also be careful, event_type is a builtin
function scr_subscribe_to_event(pub_sub_event_type, callback_script_id, subscriber_instance_id) {
	// Create a subscription instance
	var subscription = instance_create_layer(0, 0, "Instances", obj_pub_sub_subscription);
	subscription.callback_script_id = callback_script_id;
	subscription.subscriber_instance_id = subscriber_instance_id;
	
	// If the event type doesn't have a list yet, add one.
	if(!ds_map_exists(global.cfg_published_events_map, pub_sub_event_type)) {
		ds_map_add(global.cfg_published_events_map, pub_sub_event_type, ds_list_create())
	}
	
	// Add it to the list of subscriptions
	var list = ds_map_find_value(global.cfg_published_events_map, pub_sub_event_type);
	ds_list_add(list, subscription);
}
