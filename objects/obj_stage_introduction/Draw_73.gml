draw_set_alpha(1);
view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
draw_sprite_ext(spr_stage_introduction,0,view_xview + 0,view_yview + 144,1,opac,0,make_color_rgb(255,255,255),1);

scribble_object[0] = scribble(stage_text)
	.starting_format(font_get_name(global.sprite_font[1]),make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + (8), view_yview + (104),typist[0])

scribble_object[1] = scribble(txt)
	.starting_format("drp_shd",make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + (8), view_yview + (152),typist[1])