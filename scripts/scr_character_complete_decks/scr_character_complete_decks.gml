global.cfg_character_complete_decks = ds_map_create();

// cleric complete deck
ds_map_add(
	global.cfg_character_complete_decks,
	enum_being_types.cleric,
	[
		obj_card_cleric_magic_defend,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_defend,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_defend,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_defend,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_defend,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_defend,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_defend,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_defend,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_defend,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_defend,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_defend,
		obj_card_cleric_magic_heal,
		obj_card_cleric_magic_defend,
		obj_card_cleric_magic_heal,
	]
);

// witch complete deck
ds_map_add(
	global.cfg_character_complete_decks,
	enum_being_types.witch,
	[
		obj_card_witch_magic_attack,
		obj_card_witch_magic_debuff,
	]
);

// paladin complete deck
ds_map_add(
	global.cfg_character_complete_decks,
	enum_being_types.paladin,
	[
		obj_card_paladin_buff,
		obj_card_paladin_defend,
	]
);

// barbarian complete deck
ds_map_add(
	global.cfg_character_complete_decks,
	enum_being_types.barbarian,
	[
		obj_card_barbarian_attack,
		obj_card_barbarian_debuff,
	]
);