view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
draw_set_alpha(1);
draw_sprite(asset_get_index(t_scene_info[index].left_portrait[0]),t_scene_info[index].left_portrait[1],view_xview + 0,view_yview + 16);
draw_sprite(asset_get_index(t_scene_info[index].right_portrait[0]),t_scene_info[index].right_portrait[1],view_xview + 128,view_yview + 16);
draw_sprite_stretched(spr_textbox,0,view_xview + 0,view_yview + 192,256,80);

scribble_object[0] = scribble(t_scene_info[index].dialogue)
	.starting_format("drp_shd",make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + 8, view_yview + 216,typist)
	
scribble_object[1] = scribble(t_scene_info[index].speaker)
	.starting_format("drp_shd",make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + 8, view_yview + 200,typist)
	
if reveal_boss == true {
	scribble_object[2] = scribble(t_scene_info[index].speaker)
		.starting_format(font_get_name(font_misaki),make_color_rgb(255 * boss_opac,255 * boss_opac,255 * boss_opac))
		.align(fa_center, fa_top)
		.wrap(128)
		.line_spacing(8)
		.draw(view_xview + 192, view_yview + 160)
}