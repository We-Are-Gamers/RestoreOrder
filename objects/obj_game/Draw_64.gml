switch(room) {
	case rm_start:
		draw_set_halign(fa_center);
		draw_set_font(fnt_title);
		draw_text(room_width / 2, room_height / 2, "Restore Order");
		draw_set_font(fnt_basic);
		draw_text(room_width / 2, room_height / 2 + 150, "Press Enter");
		draw_set_halign(fa_left);
		break;
	case rm_game:
		draw_text(20, 20, "Mana: " + string(global.mana) + "/3");
		
		var c = c_white;
		draw_rectangle_color(48, 494, 226, 706, c, c, c, c, true);
		draw_rectangle_color(240, 494, 418, 706, c, c, c, c, true);
		draw_rectangle_color(432, 494, 610, 706, c, c, c, c, true);
		draw_rectangle_color(624, 494, 802, 706, c, c, c, c, true);
		break;
	case rm_win:
		draw_set_halign(fa_center);
		draw_set_font(fnt_title);
		draw_text(room_width / 2, room_height / 2, "You're Winner");
		draw_set_font(fnt_basic);
		draw_text(room_width / 2, room_height / 2 + 150, "Press Enter");
		draw_set_halign(fa_left);
		break;
	case rm_gameover:
	draw_set_halign(fa_center);
		draw_set_font(fnt_title);
		draw_text(room_width / 2, room_height / 2, "You're Loser");
		draw_set_font(fnt_basic);
		draw_text(room_width / 2, room_height / 2 + 150, "Press Enter");
		draw_set_halign(fa_left);
		break;
}