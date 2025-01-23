view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

draw_sprite(spr_buttons_stage,0,view_xview + 0,view_yview + 16);
draw_sprite(spr_setup_cursor,0,(view_xview + 0) + (128 * menu_index_x),(view_yview + 16) + (48 * menu_index_y));
draw_sprite_stretched(spr_textbox,0,view_xview + 0,view_yview + 208,256,64);

scribble_object[1] = scribble(button[menu_index_y][menu_index_x])
	.starting_format("drp_shd",make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + 8, view_yview + 216)