// with(scr_create_event_data(obj_event_data_<YOUR_EVENT>, self)){
//    event_property_1 = "waddup";
//	  event_property_2 = false;
//	  scr_dispatch_blocking(self);
// }
function scr_create_event_data(your_event_data_obj, dispatcher_id){
	var event_data_id = instance_create_layer(0, 0, "Instances", your_event_data_obj);
	// We expect dispatch to be called on this event data, which will destroy it.
	return event_data_id;
}