turn_control = instance_find(obj_turn_control, 0);

enemy_card = instance_create_layer(x,y,"Instances", obj_enemy_card);

with(enemy_card){
	sprite_index = other.sprite_index;
}