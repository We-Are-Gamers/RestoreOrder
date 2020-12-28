switch(position) {
	case 1:
		gui_x = 137;
		break;
	case 2:
		gui_x = 329;
		break;
	case 3:
		gui_x = 521;
		break;
	case 4:
		gui_x = 713;
		break;
}

deck_control = instance_find(obj_deck_control, 0);
turn_control = instance_find(obj_turn_control, 0);

character_card = instance_create_layer(x,y,"Instances", obj_character_card);

with(character_card) {
	sprite_index = other.sprite_index;
}