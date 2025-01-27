can_attack = false;
entered = false;
hp = 5;
enemy_id = 0;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
x_pos = x - view_xview;
y_pos = y - view_yview;

vx = camera_get_view_x(view_camera[1]);
vy = camera_get_view_y(view_camera[1]);

enemy_function = undefined;
enemy_function_array = [];