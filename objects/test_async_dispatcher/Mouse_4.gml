with(scr_create_event_data(obj_event_data_test, self)){
	number_to_multiply = 2;
	scr_dispatch_async(self);
	show_debug_message("Async dispatch done");
}
