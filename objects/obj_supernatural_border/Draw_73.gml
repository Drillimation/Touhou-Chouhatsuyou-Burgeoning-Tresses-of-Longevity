if global.global_stats.border >= 350 {
	view_xview = camera_get_view_x(view_camera[0]);
	view_yview = camera_get_view_y(view_camera[0]);

	draw_set_font(global.sprite_font[0]);
	draw_set_halign(fa_center);
	draw_set_color(make_color_rgb(255,216,0));
	draw_text(view_xview + 128,view_yview + 40,"SUPERNATURAL BORDER!!");
}