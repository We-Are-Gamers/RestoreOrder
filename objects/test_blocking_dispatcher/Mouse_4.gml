with(scr_create_event_data(obj_event_data_test, self)){
	number_to_multiply = 5;
	scr_dispatch_blocking(self);
	show_debug_message("Blocking dispatch done");
}
