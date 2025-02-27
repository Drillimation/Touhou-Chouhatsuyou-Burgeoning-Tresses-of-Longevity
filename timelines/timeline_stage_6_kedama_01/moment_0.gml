if instance_exists(obj_player_1) {
	direction = point_direction(x,y,obj_player_1.x,obj_player_1.y);
}
else {
	direction = 270;
}
speed = 1.25;