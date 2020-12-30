var instance = instance_create_layer(x, y, "Instances", test_dispatch_object);
with(instance) {
	caller_id = other.id;
	number_to_multiply = other.ex_variable;
}
scr_dispatch_event(enum_published_events.test, instance);
instance_destroy(instance);