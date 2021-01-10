for(var i = 0; i < array_length_1d(cards); i++) {
	if(instance_exists(array_get(cards, i))) {
		instance_destroy(array_get(cards, i));
	}
}