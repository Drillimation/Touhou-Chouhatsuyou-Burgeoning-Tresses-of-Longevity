view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

if y_pos > 144 {
	draw_set_alpha((288-y_pos)/200);
}
else {
	draw_set_alpha((0+y_pos)/200);
}
draw_sprite(cut_in,0,view_xview + 0,view_yview + y_pos);
draw_set_alpha(1);