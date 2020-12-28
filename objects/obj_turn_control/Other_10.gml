/// @description player de-selects card

if(selected_card.target_type == "Character") {
	for(var i = 0; i < instance_number(obj_character); i++) {
		var character = instance_find(obj_character, i);
		character.targetable = false;
	}
}
else if(selected_card.target_type == "Enemy") {
	for(var i = 0; i < instance_number(obj_enemy); i++) {
		var enemy = instance_find(obj_enemy, i);
		enemy.targetable = false;
	}
}

for(var i = 0; i < instance_number(obj_card); i++) {
	var card = instance_find(obj_card, i);
	card.targetable = true;
} 
