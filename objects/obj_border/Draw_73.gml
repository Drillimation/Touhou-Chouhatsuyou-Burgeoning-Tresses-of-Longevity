view_xview = camera_get_view_x(view_camera[1]);
view_yview = camera_get_view_y(view_camera[1]);

draw_sprite_ext(spr_border,0,view_xview + 0,view_yview + 0,1,1,0,make_color_rgb(_bri,_bri,_bri),1);

draw_set_halign(fa_right);
draw_set_font(font_ms_gothic);
draw_set_color(make_color_rgb(0,0,0));
draw_text((view_xview + 640) + 1,(view_yview + 344) + 1,"FPS: " + string(fps));
draw_set_color(make_color_rgb(255,255,255));
draw_text(view_xview + 640,view_yview + 344,"FPS: " + string(fps));

draw_set_halign(fa_left);

/*if room == room_arcade_title {
	scribble_object[0] = scribble(prompt[0])
		.starting_format("drp_shd",make_color_rgb(255,255,255))
		.align(fa_left,fa_top)
		.wrap(640)
		.draw(view_xview + 0,view_yview + 0)
}
if instance_exists(obj_name_entry_p1) or instance_exists(obj_name_entry_p2) {
	scribble_object[1] = scribble(prompt[1])
		.starting_format("drp_shd",make_color_rgb(255,255,255))
		.align(fa_left,fa_top)
		.wrap(640)
		.draw(view_xview + 0,view_yview + 0)
}*/