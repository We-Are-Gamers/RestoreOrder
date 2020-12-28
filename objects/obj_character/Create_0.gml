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

deck = instance_create_layer(0,0,"Instances",obj_cardplay_deck);
scr_cardplay_deck_init(deck, character_type);