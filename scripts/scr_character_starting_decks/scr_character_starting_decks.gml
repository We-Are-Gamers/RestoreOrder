// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.cfg_character_starting_decks = ds_map_create()


//cleric starting deck
ds_map_add(
	global.cfg_character_starting_decks,
	enum_character_types.cleric,
	[
		obj_card_cleric_magic_defend,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_heal,
	]
)

//witch starting deck
ds_map_add(
	global.cfg_character_starting_decks,
	enum_character_types.witch,
	[
		obj_card_witch_magic_attack,
		obj_card_witch_magic_attack,
		obj_card_witch_magic_debuff,
		obj_card_witch_magic_debuff,
	]
)

//paladin starting deck
ds_map_add(
	global.cfg_character_starting_decks,
	enum_character_types.paladin,
	[
		obj_card_paladin_defend,
		obj_card_paladin_defend,
		obj_card_paladin_buff,
		obj_card_paladin_buff,
	]
)
//barbarian starting deck
ds_map_add(
	global.cfg_character_starting_decks,
	enum_character_types.barbarian,
	[
		obj_card_barbarian_attack,
		obj_card_barbarian_attack,
		obj_card_barbarian_attack,
		obj_card_barbarian_debuff,
	]
)

