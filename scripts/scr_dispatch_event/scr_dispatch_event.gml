// Note: if you just want to dispatch a basic event
// (i.e. your event doesn't need to send any data besides the event type)
// you might want to use scr_dispatch(pub_sub_event_type, self) instead

// When you want to dispatch an event, it looks something like this:
// inst = instance_create_layer(0, 0, "Instances", obj_pub_sub_event_data_<your_event_here>);
// inst.dispatcher_instance_id = self;
// inst.arg1 = val1;
// inst.arg2 = val2;
// scr_dispatch_event(inst);
// instance_destroy(inst);
function scr_dispatch_event(event_data_instance_id){
	
	var pub_sub_event_type = event_data_instance_id.pub_sub_event_type;
	
	// If there isn't a list of subscriptions for this type, do nothing.
	if(!ds_map_exists(global.cfg_published_events_map, pub_sub_event_type)) {
		return;
	}
	
	var list = ds_map_find_value(global.cfg_published_events_map, pub_sub_event_type);
	
	for(var i = 0; i < ds_list_size(list); i++) {
		var subscription = ds_list_find_value(list, i);
		script_execute(subscription.callback_script_id, subscription.subscriber_instance_id, event_data_instance_id);
	}
}