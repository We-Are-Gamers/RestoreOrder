var instance = instance_create_layer(0, 0, "Instances", obj_pub_sub_event_data_test);
instance.dispatcher_id = self;
scr_dispatch_event(instance);
instance_destroy(instance);