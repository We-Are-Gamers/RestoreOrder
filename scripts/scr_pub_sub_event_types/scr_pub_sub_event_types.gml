// Naming convention: group_verb
enum enum_pub_sub_event_types {
	test,
	
	game_begin,
	game_end,
	
	encounter_begin,
	encounter_end,
	
	turn_begin,
	turn_step,
	
	hand_fill,
	hand_discard,
	
	card_draw,
	card_discard,
	
	action_occured,
	actions_activate,
	actions_deactivate,
	
	target_selected,
	target_deselected,
	targets_activate,
	targets_deactivate,
	
	spellbook_selected,
	spellbook_deselected,
	
	enemies_killed,
	enemies_spawned,
	
	enemy_evaluate_target,
	
	lose,
	length
}