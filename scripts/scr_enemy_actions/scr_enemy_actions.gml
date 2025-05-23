function scr_enemy_set_friction(_friction) {
	if speed > 0 or speed < 0 {
	    friction = _friction;
	}
	else {
	    friction = 0;
	}
}

function scr_enemy_set_path(_path,_speed,_destroy_at_end = true,_x_start = x_pos,_y_start = y_pos) {
	if !variable_instance_exists(id,"enemy_path") {
		enemy_path = path_duplicate(_path);
		path_start(enemy_path,_speed,path_action_stop,false);
	}
	p_position = path_position;
	path_start_x = _x_start
	path_start_y = _y_start
	x_pos = path_start_x
	y_pos = path_start_y
	path_end();
	path_start(enemy_path,_speed,path_action_stop,false);
	path_position = p_position;
}

function scr_enemy_float(_speed,_speed_max,_direction,_closeness) {
	if instance_exists(obj_player_1) {
		if collision_circle(x,y,_closeness,obj_player_1,false,true) {
			speed -= _speed;
		}
		else {
			if speed < _speed_max {
				speed += _speed;
			}
		}
		if direction > point_direction(x,y,obj_player_1.x,obj_player_1.y) {
			direction -= _direction;
		}
		if direction < point_direction(x,y,obj_player_1.x,obj_player_1.y) {
			direction += _direction;
		}
	}
}