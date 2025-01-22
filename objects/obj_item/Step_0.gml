view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

x = view_xview + x_pos;
y = view_yview + y_pos;

x_pos += hspeed;
y_pos += vspeed;

if collision_circle(x,y,16,obj_player_1,false,false) {
	speed = 5;
	direction = point_direction(x, y, obj_player_1.x, obj_player_1.y);
}
if instance_exists(obj_player_1) {
	if obj_player_1.y <= view_yview + 64 and global.pow[0] >= 100 {
		if collision_circle(x,y,288,obj_player_1,false,false) {
			speed = 5;
			direction = point_direction(x, y, obj_player_1.x, obj_player_1.y);
		}
	}
}
if collision_circle(x,y,16,obj_player_2,false,false) {
	speed = 5;
	direction = point_direction(x, y, obj_player_2.x, obj_player_2.y);
}
if instance_exists(obj_player_2) {
	if obj_player_2.y <= view_yview + 64 and global.pow[1] >= 100 {
		if collision_circle(x,y,288,obj_player_2,false,false) {
			speed = 5;
			direction = point_direction(x, y, obj_player_2.x, obj_player_2.y);
		}
	}
}