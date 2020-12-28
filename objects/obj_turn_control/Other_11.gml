/// @description player selects card

if(selected_card.target_type == "Character") {
	for(var i = 0; i < instance_number(obj_character); i++) {
		var character = instance_find(obj_character, i);
		character.targetable = true;
	}
}
else if(selected_card.target_type == "Enemy") {
	for(var i = 0; i < instance_number(obj_enemy); i++) {
		var enemy = instance_find(obj_enemy, i);
		enemy.targetable = true;
	}
}

for(var i = 0; i < instance_number(obj_card); i++) {
	var card = instance_find(obj_card, i);
	card.targetable = false;
}