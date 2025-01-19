view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

time_limit -= 1;
if time_limit == 0 {
	instance_create_depth(view_xview + 0, view_yview + 0,0,obj_gameover_transition);
	scr_change_bgm(15);
}
else {
	alarm[0] = 60;
}