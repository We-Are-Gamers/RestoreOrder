function scr_turn_control_turn_step(turn_control_id, event_data_id){
	with(turn_control_id) {
		if(turn == enum_turn_stage_types.player) {
			scr_turn_control_player_turn_step(self);
		} else {
			scr_turn_control_enemy_turn_step(self);
		}
	}
	// if players turn
	//	if there isn't mana
	//		set turn to enemy
	//		dispatch(turn_begin_event)
	//	elif there are no more characters
	//		dispatch(lose_event)
	//	elif there are no more enemies
	//		dispatch(encounter_end_event)
	//	else
	//		dispatch(activate_actions)
	// elif enemies turn
	//	if there are no more characters
	//		dispatch(lose_event)
	//	elif there are no more enemies
	//		dispatch(encounter_end_event)
	//	elif all enemies have completed their turn
	//		set players turn
	//		dispatch(turn_begin_event)
	//	else
	//		pop an enemy from queue and execute
	//		sleep(1 second)
	//		dispatch(turn_begin_event)
}