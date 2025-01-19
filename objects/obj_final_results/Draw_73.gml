view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

draw_set_font(global.sprite_font[1]);
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(255,255,255))
draw_text(view_xview + 128,view_yview + 16,"FINAL RESULTS")

draw_set_font(global.sprite_font[0]);
for(var i = 0; i < 8; i++) {
	draw_set_halign(fa_left);
	draw_text(view_xview + 8,(view_yview + 56) + (i * 8),results_data[# 0,i])
	draw_set_halign(fa_right);
	draw_text(view_xview + 176,(view_yview + 96) + (i * 8),results_data[# 1,i]);
	draw_text(view_xview + 248,(view_yview + 96) + (i * 8),results_data[# 2,i]);
}