view_xview =  camera_get_view_x(view_camera[0]);
view_yview =  camera_get_view_y(view_camera[0]);

x = view_xview + x_pos;
y = view_yview + y_pos;

if layer_sequence_is_finished(_sequence) != 0 {
	layer_sequence_destroy(_sequence);
	instance_destroy();
}