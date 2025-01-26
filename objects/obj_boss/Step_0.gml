view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

vx = camera_get_view_x(view_camera[1]);
vy = camera_get_view_y(view_camera[1]);

if point_in_rectangle(x,y,vx + 0,vy + 0,vx + 640,vy + 360) {
	if entered == false {
		x_pos = x - view_xview;
		y_pos = y - view_yview;
		entered = true;
	}
	can_attack = true;

	x = view_xview + x_pos;
	y = view_yview + y_pos;

	x_pos += hspeed;
	y_pos += vspeed;
	
	_t += 1
	_t = _t mod 6
	if (_t == 0) {
		timer -= 0.1;
		timer = clamp(timer,0,99);
		if timer == 0 {
			hp = 0;
		}
	}
	if hp <= 0 {
		life -= 1;
		if instance_exists(obj_spell_banner_enemy) {
			instance_destroy(obj_spell_banner_enemy);
		}
		if life >= 1 {
			hp = starthp;
			timeline_running = false;
			randomize();
			if timer >= 0.1 {
				if global.playeractive[0] == true { global.playerscore[0] += round(timer*100); }
				if global.playeractive[1] == true { global.playerscore[1] += round(timer*100); }
				randomize();
				var inst = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
				inst.image_index = 2
				for (var i = 0; i < 4; i += 1) {
					var inst2 = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
					inst2.image_index = 0;
				}
				for (var i = 0; i < 5; i += 1) {
					var inst3 = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
					inst3.image_index = 1;
				}
				for (var i = 0; i < 3; i += 1) {
					var inst5 = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
					inst5.image_index = 6
				}
				for (var i = 0; i < 3; i += 1) {
					var inst6 = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
					inst6.image_index = 6
				}
			}
			with(obj_bullet_enemy) {
				if global.player_stats[0].player_active == 1 { global.player_stats[0].player_score += (abs(round((y_pos / 10) - 30)) * 10); }
				if global.player_stats[1].player_active == 1 { global.player_stats[1].player_score += (abs(round((y_pos / 10) - 30)) * 10); }
				global.global_stats.cherry += 1;
				instance_destroy();
			}
			timer = attack[life-1][4]
		}
		else {
			instance_destroy();
		}
	}
}
else {
	can_attack = false;
}

if can_attack == true {
	if alarm[0] < 0 {
		alarm[0] = 5;
	}
}