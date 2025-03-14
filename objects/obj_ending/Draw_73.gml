view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

scribble_object[0] = scribble(text)
	.starting_format("drp_shd",make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw((view_xview + 8) + 1, (view_yview + 200) + 1,typist)

draw_set_font(font_ms_gothic);