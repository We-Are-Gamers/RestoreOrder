if(selected) {
	draw_text(20, 80, "Selected Card: " + string(card_name));
	draw_text(20, 100, "Phys Atk: " + string(physical_atk));
	draw_text(20, 120, "Mag Atk: " + string(magic_atk));
	draw_text(20, 140, "Phys Def: " + string(physical_defense));
	draw_text(20, 160, "Mag Def: " + string(magic_defense));
	draw_text(20, 180, "Healing: " + string(healing));
	draw_text(20, 200, "Buff Atk: " + string(buff_atk));
	draw_text(20, 220, "Debuff Atk: " + string(debuff_atk));
}