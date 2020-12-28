if(selected) {
	draw_text(100, 20, "Selected Card: " + string(card_name));
	draw_text(100, 40, "Phys Atk: " + string(physical_atk));
	draw_text(100, 60, "Mag Atk: " + string(magic_atk));
	draw_text(100, 80, "Phys Def: " + string(physical_defense));
	draw_text(100, 100, "Mag Def: " + string(magic_defense));
	draw_text(100, 120, "Healing: " + string(healing));
	draw_text(100, 140, "Buff Atk: " + string(buff_atk));
	draw_text(100, 160, "Debuff Atk: " + string(debuff_atk));
}