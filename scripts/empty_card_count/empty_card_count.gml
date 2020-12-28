// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function empty_card_count(player_hand){
	var count = 0;
	for(var i = 0; i < 2; i++) {
		if(player_hand[i] == false) {
			count += 1;
		}
	}
	return count;
}