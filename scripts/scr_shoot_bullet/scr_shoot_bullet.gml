#macro player obj_player_1
#macro enemy obj_enemy

function scr_shoot_bullet_player(_speed, _direction, _sprite, _color, _x, _y, _aimed, _sound, _player, _function = undefined, _function_arguments = undefined) {
	scr_one_channel_sound(_sound)
	view_xview = camera_get_view_x(view_camera[0]);
	view_yview = camera_get_view_y(view_camera[0]);
	
	var inst = instance_create_depth(x + _x, y + _y, -100, obj_bullet_player);
	with (inst) {
		speed = _speed;
		sprite_index = _sprite
		image_index = _color
		play_id = _player;
		
		direction = _direction;
		if _aimed and instance_exists(enemy) {
			direction = point_direction(x, y, enemy.x, enemy.y);
		}
		if _function != undefined {
			effect_script = _function
			script_array = _function_arguments
		}
	}
}

function scr_shoot_bullet_enemy(_speed, _direction, _sprite, _color, _x, _y, _aimed, _sound, _relative = true, _function = undefined, _function_arguments = undefined) {
	scr_one_channel_sound(_sound)
	view_xview = camera_get_view_x(view_camera[0]);
	view_yview = camera_get_view_y(view_camera[0]);
	
	if _relative == false {
		var ex = view_xview + _x;
		var ey = view_yview + _y;
	}
	else {
		var ex = x + _x;
		var ey = y + _y;
	}
	
	var inst = instance_create_depth(ex, ey, -100, obj_bullet_enemy);
	with (inst) {
		speed = _speed;
		sprite_index = _sprite
		image_index = _color
		
		direction = _direction;
		if _aimed and instance_exists(player) {
			direction = point_direction(x, y, player.x, player.y) + _direction;
		}
		if _function != undefined {
			effect_script = _function
			script_array = _function_arguments
		}
	}
}