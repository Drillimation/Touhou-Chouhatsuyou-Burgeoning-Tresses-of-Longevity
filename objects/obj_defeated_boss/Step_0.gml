view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

x = view_xview + x_pos;
y = view_yview + y_pos;

x_pos += hspeed;
y_pos += vspeed;

_i += 1
_i = _i mod 5
if _i == 0 {
	if subimg < 4 {
		subimg++;
	}
	else {
		subimg = 0;
	}
}