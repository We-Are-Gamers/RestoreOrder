if(targetable) {
	image_xscale = 1;
	image_yscale = 1;
	
	with(turn_control) {
		target = other.id;
		event_user(2);
	}
}