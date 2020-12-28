if(cur_health <= 0) {
	global.characters -= 1;
	with(deck_control) {
		dead_character_type = other.character_type;
		event_user(1);
	}
	instance_destroy();
}