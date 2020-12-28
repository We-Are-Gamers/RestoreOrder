if(keyboard_check_pressed(vk_enter)) {
	switch(room) {
		case rm_start:
			room_goto(rm_game);
			break;
		case rm_game:
			break;
		case rm_win:
		case rm_gameover:
			game_restart();
			break;
	}
}

if(room == rm_game) {
	if(global.characters <= 0) {
		room_goto(rm_gameover);
	}

	if(global.enemies <= 0) {
		room_goto(rm_win);
	}
}