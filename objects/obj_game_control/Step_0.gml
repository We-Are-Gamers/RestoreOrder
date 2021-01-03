switch(room) {
	case rm_win:
	case rm_gameover:
		if(keyboard_check_pressed(vk_enter)) {
			game_restart();
		}
		break;
	default:
		break;
}