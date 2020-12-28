/// @description enemy begin turn

for(var i = 0; i < instance_number(obj_enemy); i++) {
	next_enemy_turn = false;
	var enemy = instance_find(obj_enemy, i);
	enemy.targetable = false;

	enemy.physical_defense = 0;
	enemy.magic_defense = 0;
	
	with(enemy) {
		alarm[0] = 60;
	}
}