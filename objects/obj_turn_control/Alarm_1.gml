/// @description run next enemy turn
// You can write your code in this editor


if(ds_queue_size(enemy_turn_queue) == 0){
	turn_end = true;
}else{
//do enemy turn
	var enemy = ds_queue_dequeue(enemy_turn_queue);
	scr_enemy_run_turn(enemy);
	alarm[1] = 60;
}