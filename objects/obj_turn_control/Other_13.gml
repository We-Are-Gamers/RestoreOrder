/// @description player begin turn

for(var i = 0; i < instance_number(obj_character); i++) {
	var character = instance_find(obj_character, i);

	character.physical_atk_mult = character.base_phys_atk_mult;
	character.magic_atk_mult = character.base_mag_atk_mult;
	character.physical_defense = character.base_phys_def;
	character.magic_defense = character.base_mag_def;
}

for(var i = 0; i < instance_number(obj_enemy); i++) {
	var enemy = instance_find(obj_enemy, i);
	enemy.phys_atk_mult = enemy.base_phys_atk_mult;
	enemy.mag_atk_mult = enemy.base_mag_atk_mult;
}