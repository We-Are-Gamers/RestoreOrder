function scr_test_subscribed(subscriber_instance_id, event_data_instance_id) {
	var result = subscriber_instance_id.multiplier * event_data_instance_id.number_to_multiply;
	show_debug_message(string(result));
}