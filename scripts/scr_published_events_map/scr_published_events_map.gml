global.cfg_published_events_map = ds_map_create();

ds_map_add_list(
	global.cfg_published_events_map,
	enum_published_events.test,
	ds_list_create()
);