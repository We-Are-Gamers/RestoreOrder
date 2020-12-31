// Use this to dispatch a basic event
// If you need to dispatch an event with arguments, check out scr_dispatch_event instead
function scr_dispatch(pub_sub_event_type, dispatcher_instance_id){
	var inst = instance_create_layer(0, 0, "Instances", obj_pub_sub_event_data);
	inst.pub_sub_event_type = pub_sub_event_type;
	inst.dispatcher_instance_id = dispatcher_instance_id;
	scr_dispatch_event(inst);
	instance_destroy(inst);
}