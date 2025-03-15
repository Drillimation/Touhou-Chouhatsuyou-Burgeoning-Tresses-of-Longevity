view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
draw_set_alpha(1);
scribble_object = scribble(txt)
	.starting_format("drp_shd",make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(x, y)

if y < -288 - (crd_hgt) {
	instance_create_depth(0,0,0,obj_gameover_transition)
	instance_destroy();
}