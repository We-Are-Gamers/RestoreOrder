if(selected) {
	draw_text(20, 80, "Selected Card: " + string(card_name));
	draw_text(20, 100, "Phys Atk: " + string(physical_atk));
	draw_text(20, 120, "Mag Atk: " + string(magic_atk));
	draw_text(20, 140, "Phys Def: " + string(physical_defense));
	draw_text(20, 160, "Mag Def: " + string(magic_defense));
	draw_text(20, 180, "Healing: " + string(healing));
	draw_text(20, 200, "Buff Phys Atk: " + string(buff_physical_atk));
	draw_text(20, 220, "Debuff Phys Atk: " + string(debuff_physical_atk));
	draw_text(20, 240, "Buff Mag Atk: " + string(buff_magic_atk));
	draw_text(20, 260, "Debuff Mag Atk: " + string(debuff_magic_atk));
}