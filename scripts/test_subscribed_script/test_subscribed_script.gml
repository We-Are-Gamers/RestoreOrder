function test_subscribed_script(sub_instance, dispatched_instance) {
	var result = sub_instance.multiplier * dispatched_instance.number_to_multiply;
	show_debug_message(string(result));
}