if instance_exists(obj_player_1) {
	ran_dir = point_direction(x,y,obj_player_1.x,obj_player_1.y)
}
else {
	ran_dir = 270;
}
ammo = (game_difficulty * 3) + 3;