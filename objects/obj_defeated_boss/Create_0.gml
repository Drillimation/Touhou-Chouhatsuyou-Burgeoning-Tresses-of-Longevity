view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
x_pos = x - view_xview;
y_pos = y - view_yview;

image_speed = 0;
_i = 0;
subimg = 0;
alarm[0] = 300