if(selected && !targetable && turn_control.turn == "Player") {
	with(turn_control) {
		event_user(0);
		selected_card = -1;
	}
	
	selected = false;
}
else if(targetable && !selected && turn_control.turn == "Player") {
	selected = true;
	
	with(turn_control) {
		selected_card = other.id;
		event_user(1);
	}
}