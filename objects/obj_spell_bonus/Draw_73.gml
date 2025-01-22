view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

draw_set_font(global.sprite_font[0]);
draw_set_halign(fa_center);
if cleared == false {
	draw_set_color(make_color_rgb(255,216,0));
	draw_text(view_xview + 128,view_yview + 40,"SPELL CARD BONUS");
	draw_set_font(global.sprite_font[1]);
	draw_set_color(make_color_rgb(255,64,64));
	draw_text(view_xview + 128,view_yview + 48,bonus);
}
else {
	draw_set_color(make_color_rgb(255,216,0));
	draw_text(view_xview + 128,view_yview + 40,"SPELL BONUS FAILED");
}