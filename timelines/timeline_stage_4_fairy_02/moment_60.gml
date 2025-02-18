if instance_exists(obj_player_1) {
	tgt = point_direction(x,y,obj_player_1.x,obj_player_1.y);
}
else {
	tgt = 270;
}
speed = 0;