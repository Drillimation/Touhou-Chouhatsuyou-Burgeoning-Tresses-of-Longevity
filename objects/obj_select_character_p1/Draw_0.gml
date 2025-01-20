draw_sprite(spr_buttons_type,0,view_xview + 0,view_yview + 16);
draw_sprite(spr_setup_cursor,0,view_xview + 0,(view_yview + 16) + (48 * menu_index_y));
draw_sprite_stretched(spr_textbox,0,view_xview + 0,view_yview + 208,256,64);

/*scribble_object[0] = scribble(button[menu_index_y])
	.starting_format("drp_shd",make_color_rgb(255,0,0))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + 8, view_yview + 216)*/

scribble_object[1] = scribble(desc[menu_index_y])
	.starting_format("drp_shd",make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + 8, view_yview + 216)