global.cfg_being_starting_decks = ds_map_create();


//cleric starting deck
ds_map_add(
	global.cfg_being_starting_decks,
	enum_being_types.cleric,
	[
		obj_card_cleric_magic_defend,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_heal,
	]
)

//witch starting deck
ds_map_add(
	global.cfg_being_starting_decks,
	enum_being_types.witch,
	[
		obj_card_witch_magic_attack,
		obj_card_witch_magic_attack,
		obj_card_witch_magic_debuff,
		obj_card_witch_magic_debuff,
	]
)

//paladin starting deck
ds_map_add(
	global.cfg_being_starting_decks,
	enum_being_types.paladin,
	[
		obj_card_paladin_defend,
		obj_card_paladin_defend,
		obj_card_paladin_buff,
		obj_card_paladin_buff,
	]
)
//barbarian starting deck
ds_map_add(
	global.cfg_being_starting_decks,
	enum_being_types.barbarian,
	[
		obj_card_barbarian_attack,
		obj_card_barbarian_attack,
		obj_card_barbarian_attack,
		obj_card_barbarian_debuff,
	]
)

// low-health enemy
ds_map_add(
	global.cfg_being_starting_decks,
	enum_being_types.low_health,
	[
		obj_card_barbarian_attack,
	]
);

// high-health enemy
ds_map_add(
	global.cfg_being_starting_decks,
	enum_being_types.high_health,
	[
		obj_card_barbarian_attack,
	]
)

// low-buff enemy
ds_map_add(
	global.cfg_being_starting_decks,
	enum_being_types.low_buff,
	[
		obj_card_barbarian_attack,
		obj_card_barbarian_debuff,
	]
)

// high-buff enemy
ds_map_add(
	global.cfg_being_starting_decks,
	enum_being_types.high_buff,
	[
		obj_card_barbarian_attack,
		obj_card_barbarian_debuff,
	]
)

