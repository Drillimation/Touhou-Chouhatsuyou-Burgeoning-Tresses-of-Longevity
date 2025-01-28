view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
for(_i = shoot_2d_min; _i < shoot_2d_max; _i++) {
	for(_j = shoot_3d_min; _j < shoot_3d_max; _j++) {
		script_execute_ext(effect_script,script_array);
	}
}
instance_destroy();