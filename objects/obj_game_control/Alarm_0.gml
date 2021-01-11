/// @description begin the game, actually
instance_create_layer(0, 0, "Instances", obj_turn_control);
	
instance_create_layer(384, 765, "Instances", obj_cleric);
instance_create_layer(768, 805, "Instances", obj_witch);
instance_create_layer(1152, 805, "Instances", obj_paladin);
instance_create_layer(1536, 765, "Instances", obj_barbarian);


// Put this at -300 because "Instances" is at -200 and this should be on top of that
instance_create_depth(-2000, 0, -300, obj_spellbook);

scr_encounters_get_level_map(enum_level_names.electric);
	
with(scr_create_event_data(obj_event_data_encounter_begin, self)) {
	scr_dispatch_blocking(self);
}