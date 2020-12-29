if(keyboard_check_pressed(vk_space)) {
	turn_end = true;
}

if(global.mana <= 0 || turn_end) {
	if(turn == "Player") {
		turn = "Enemy";
		
		event_user(4); // start enemy turn
		turn_end = false;
	}
	else if(turn == "Enemy") {
		turn = "Player";
		turn_counter += 1;
		global.mana = 3;
		
		with(deck_control) {
			event_user(0);
		}
		
		event_user(3); // start player turn
		turn_end = false;
	}
}