function scr_unsubscribe_from_all(subscriber_id) {
	for(var i = 0; i < enum_pub_sub_event_types.length; i++) {
		scr_unsubscribe_from_event(i, subscriber_id);
	}
}