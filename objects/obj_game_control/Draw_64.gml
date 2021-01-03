switch(room) {
	case rm_start:
		draw_set_halign(fa_center);
		draw_set_font(fnt_title);
		draw_text(room_width / 2, room_height / 2, "Restore Order");
		draw_set_font(fnt_basic);
		draw_text(room_width / 2, room_height / 2 + 150, "Press Enter");
		draw_set_halign(fa_left);
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
	default:
		draw_text(20, 20, "Mana: " + string(global.mana) + "/3");
		draw_text(20, 40, "Blood: " + string(global.blood));
		break;
}