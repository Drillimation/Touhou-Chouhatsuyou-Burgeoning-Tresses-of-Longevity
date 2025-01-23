view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

draw_set_halign(fa_center);
draw_set_color(make_color_rgb(255,0,0))
draw_set_font(global.sprite_font[1]);
draw_text(view_xview + 128,view_yview + 16,"GAME CLEAR")

draw_set_font(global.sprite_font[0]);
draw_set_color(make_color_rgb(255,255,255));
draw_set_halign(fa_left);
draw_text(view_xview + 8,view_yview + 56,left_text);

draw_set_halign(fa_right);
for(var i = 0; i < 2; i += 1) {
	if global.playeractive[i] == true {
		draw_text((view_xview + 176) + (72 * i),view_yview + 64,statistics[i]);
	}
}