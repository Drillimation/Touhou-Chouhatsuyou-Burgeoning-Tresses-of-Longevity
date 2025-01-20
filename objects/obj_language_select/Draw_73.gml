view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
draw_set_font(font_ms_gothic);
draw_set_halign(fa_left);

draw_sprite(spr_menu_cursor,0,16,(48) + (menu_index_y * 16));
draw_set_color(make_color_rgb(0,0,0));
for(var i = 0; i < buttons_y; i++) {
	draw_text(32+1,(48+1) + (i * 16),button[i])
}
draw_text(16+1,16+1,desc[menu_index_y]);
draw_set_color(make_color_rgb(255,255,255));
for(var i = 0; i < buttons_y; i++) {
	draw_text(32,(48) + (i * 16),button[i])
}
draw_text(16,16,desc[menu_index_y]);