if(cur_health <= 0) {
	global.characters -= 1;
	//TODO: do dead things
	instance_destroy();
}