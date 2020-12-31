if(keyboard_check_pressed(vk_delete)) {
	cur_health = 0;
}

if(cur_health <= 0) {
	global.blood += blood;
}