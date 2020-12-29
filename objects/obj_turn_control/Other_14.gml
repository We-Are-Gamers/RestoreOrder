/// @description enemy begin turn


ds_queue_clear(enemy_turn_queue);
for(i = 0; i < instance_number(obj_enemy); ++i){
	ds_queue_enqueue(enemy_turn_queue, instance_find(obj_enemy, i));
}
alarm[1] = 60;


/*
var num_enemies = instance_number(obj_enemy);
var i = 0;

do {
	next_enemy_turn = false;
	var enemy = instance_find(obj_enemy, i);
	enemy.targetable = false;

	enemy.physical_defense = 0;
	enemy.magic_defense = 0;
	
	with(enemy) {
		alarm[0] = 60;
	}
	
	i++;
	
} until (i == num_enemies - 1);

turn_end = true;