draw_set_color(make_color_rgb(0,0,0))
draw_rectangle(view_xview + 0,view_yview + 0,view_xview + 255,view_yview + 287,false)
var i = 0;
repeat (buttons_y) {
	draw_set_font(font_ms_gothic);
	draw_set_halign(fa_center);
	draw_set_color(make_color_rgb(255,255,255));
	if (menu_index_y == i) draw_set_color(make_color_rgb(255,0,0));
	draw_text(view_xview + 128, (view_yview + 144) + (16 * i), button[i]);
	i++;
}
draw_set_color(make_color_rgb(255,255,255));
draw_text(view_xview + 128,view_yview + 32,prompt);
draw_text(view_xview + 128,view_yview + 64,desc[_id]);