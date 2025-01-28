function scr_danmaku_curve(_direction,_speed,_infinite,_time = 60) {
	if !variable_instance_exists(id,"_tick") {
		_tick = 0;
		temp_time = _time;
	}
	_tick += 1
	_tick = _tick mod _speed
	if (_tick == 0) {
		direction += _direction
	}
	if _infinite == false {
		temp_time -= 1;
		if temp_time <= 0 {
			effect_script = undefined;
			script_array = [];
		}
	}
}

function scr_danmaku_split(_amount,_array,_delay_time = 0) {
	_delay_time -= 1;
	if _delay_time == 0 {
		for(var i = 0; i < _amount; i++) {
			script_execute_ext(scr_shoot_bullet_enemy,_array)
		}
	}
}

function scr_danmaku_marisa_laser(_speed,_xscale) {
	speed = _speed;
	image_xscale = _xscale;
}

function scr_danmaku_reimu_aim(_range) {
	if instance_exists(obj_enemy) {
		if collision_circle(x,y,_range,obj_enemy,false,true) {
			var ex = instance_nearest(x, y, obj_enemy).x;
			var ey = instance_nearest(x, y, obj_enemy).y;
			direction = point_direction(x,y,ex,ey);
		}
	}
}

function scr_danmaku_sanae_aim(_range) {
	temp_time = _range;
	if instance_exists(obj_enemy) {
		var ex = instance_nearest(x, y, obj_enemy).x;
		var ey = instance_nearest(x, y, obj_enemy).y;
		if y == ey {
			if x <= ex { direction = 0; }
			if x >= ex { direction = 180; }
		}
	}
}