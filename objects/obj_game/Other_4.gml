if(room == rm_game) {
	turn_control = instance_create_layer(0, 0, "Instances", obj_turn_control);
	deck_control = instance_create_layer(0, 0, "Instances", obj_deck_control);
	turn_control.deck_control = deck_control;
	
	instance_create_layer(137, 356, "Instances", obj_cleric);
	instance_create_layer(329, 356, "Instances", obj_witch);
	instance_create_layer(521, 356, "Instances", obj_paladin);
	instance_create_layer(713, 356, "Instances", obj_barbarian);
	instance_create_layer(1050, 292, "Instances", obj_big_bad);

	with(deck_control) {
		event_user(0);
	}
}