switch(room) {
	case rm_start:
		if(keyboard_check_pressed(vk_enter)) {
			choose_encounter(1);
			game_start = true;
		}
		break;
	case rm_win:
	case rm_gameover:
		if(keyboard_check_pressed(vk_enter)) {
			game_restart();
		}
		break;
	default:
		if(keyboard_check_pressed(vk_tab)) {
			room_goto(rm_win);
		}
		if(keyboard_check_pressed(vk_enter)) {
			choose_encounter(1);
		}
		
		if(global.characters <= 0) {
			room_goto(rm_gameover);
		}

		if(global.enemies <= 0) {
			room_goto(rm_win);
		}
		break;
}