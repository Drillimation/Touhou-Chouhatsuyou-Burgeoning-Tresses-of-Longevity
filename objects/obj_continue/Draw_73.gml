view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

draw_sprite_stretched(spr_textbox,0,view_xview + 0,view_yview + 208,256,64)

scribble_object[0] = scribble(prompt)
	.starting_format("drp_shd",make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + 8, view_yview + 216)

draw_set_font(global.sprite_font[1]);
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(255,0,0));
draw_text(view_xview + 128,view_yview + 104,"CONTINUE?\n" + string(time_limit));