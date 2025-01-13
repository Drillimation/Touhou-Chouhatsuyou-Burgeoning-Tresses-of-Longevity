view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
draw_set_font(font_ms_gothic);
draw_set_halign(fa_left);

draw_set_color(make_color_rgb(0,0,0));
draw_set_halign(fa_right);
draw_text(400+1,32 + 1, desc[0]);
draw_text(512+1,32 + 1, desc[1]);
draw_text(624+1,32 + 1, desc[2]);
draw_set_color(make_color_rgb(255,255,255));
draw_set_halign(fa_right);
draw_text(400,32, desc[0]);
draw_text(512,32, desc[1]);
draw_text(624,32, desc[2]);

if buttons_y < list_max_entries + 1 {
	draw_sprite(spr_menu_cursor,0,0,view_yview + (48 + (menu_index_y * 32)))
}
else {
	draw_sprite(spr_menu_cursor,0,0,view_yview + (48 + (scroll_clamp * 32)))
}

if ds_grid_height(global.spellcard_history) < list_max_entries + 1 { 
	_ss = ds_grid_height(global.spellcard_history);
}
else {
	_ss = list_max_entries + 1
}
for(var i = 0; i < _ss; i++) {
	draw_set_color(make_color_rgb(0,0,0));
	draw_set_halign(fa_left);
	draw_text(16+1,((i * 32) + 48) + 1, button[inventory_scroll[0] + i]);
	draw_set_halign(fa_right);
	draw_text(400+1,((i * 32) + 64) + 1, global.spellcard_history[# 0,inventory_scroll[0] + i]);
	draw_text(512+1,((i * 32) + 64) + 1, global.spellcard_history[# 1,inventory_scroll[0] + i]);
	draw_text(624+1,((i * 32) + 64) + 1,string(success_rate[inventory_scroll[0] + i]) + "%");
	draw_set_color(make_color_rgb(255,255,255));
	draw_set_halign(fa_left);
	draw_text(16,((i * 32) + 48), button[inventory_scroll[0] + i]);
	draw_set_halign(fa_right);
	draw_text(400,((i * 32) + 64), global.spellcard_history[# 0,inventory_scroll[0] + i]);
	draw_text(512,((i * 32) + 64), global.spellcard_history[# 1,inventory_scroll[0] + i]);
	draw_text(624,((i * 32) + 64),string(success_rate[inventory_scroll[0] + i]) + "%");
}

scribble_object[0] = scribble(prompt)
	.starting_format("drp_shd",make_color_rgb(255,255,255))
	.align(fa_left,fa_top)
	.wrap(640)
	.draw(view_xview + 0,view_yview + 0)