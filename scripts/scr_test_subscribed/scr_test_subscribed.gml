function scr_test_subscribed(subscriber_id, event_data_id) {
	var result = subscriber_id.multiplier * event_data_id.number_to_multiply;
	show_debug_message(string(result));
}