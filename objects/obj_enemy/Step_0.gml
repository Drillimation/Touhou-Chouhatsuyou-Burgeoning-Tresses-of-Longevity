view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

vx = camera_get_view_x(view_camera[1]);
vy = camera_get_view_y(view_camera[1]);

if point_in_rectangle(x,y,vx + 0,vy + 0,vx + 640,vy + 360) {
	if entered == false {
		x_pos = x - view_xview;
		y_pos = y - view_yview;
		entered = true;
	}
	can_attack = true;

	x = view_xview + x_pos;
	y = view_yview + y_pos;

	x_pos += hspeed;
	y_pos += vspeed;
}
else {
	can_attack = false;
}

if can_attack == true {
	if alarm[0] < 0 {
		alarm[0] = 5;
	}
}