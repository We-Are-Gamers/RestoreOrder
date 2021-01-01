/// @description Insert description here
enemy_turn_queue = ds_queue_create();

// Global phases
//	* Encounters
//		* Player turn
//			-1 If no player character, lose
//			-0.5 If no enemy character, next encounter
//			0  If no mana, set turn to turn_types.enemy
//			0.25 enemies decide what action they will do
//			1  Select card(A) or button(B) or craft(C)
//			2A Do targeting for card
//			3A Apply card's action
//			2B Apply button's action
//			2C Select character to craft with
//			3C Select card to craft
//			4  Repeat
//		* Enemy turn
//			1 For each enemy, do turn
//				* For each action do action, if no more characters -- lose
//			2 If no more enemies, end encounter
//			3 Set turn to enum_turn_types.player 
//	* Menus
//  * Inbetween encounters