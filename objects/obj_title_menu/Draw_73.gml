view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
draw_set_font(font_ms_gothic);
draw_set_halign(fa_left);

draw_sprite(spr_menu_cursor,0,16,(32) + (menu_index_y * 16));

draw_set_color(make_color_rgb(0,0,0));
for(var i = 0; i < buttons_y; i++) {
	draw_text(32+1,(32+1) + (i * 16),button[i])
}
draw_text(0+1,304+1,desc[menu_index_y]);
draw_text(0+1,320+1,struct_data.copyright)

draw_set_color(make_color_rgb(255,255,255));
for(var i = 0; i < buttons_y; i++) {
	draw_text(32,(32) + (i * 16),button[i])
}
draw_text(0,304,desc[menu_index_y]);
draw_text(0,320,struct_data.copyright)

scribble_object[0] = scribble(prompt)
	.starting_format("drp_shd",make_color_rgb(255,255,255))
	.align(fa_left,fa_top)
	.wrap(640)
	.draw(view_xview + 0,view_yview + 0)