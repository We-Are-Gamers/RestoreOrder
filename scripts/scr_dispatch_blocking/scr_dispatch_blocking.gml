// with(scr_create_event_data(obj_event_data_<YOUR_EVENT>, self)){
//    event_property_1 = "waddup";
//	  event_property_2 = false;
//	  scr_dispatch_blocking(self);
// }
function scr_dispatch_blocking(event_data_id){
	scr_dispatch_helper(event_data_id, true);
}