function scr_declare_damage(_damage, _id){
	if global.global_stats.breezy_mode == true {
		instance_destroy();
		global.player_stats[_id].player_health -= _damage;
		scr_one_channel_sound(snd_hurt)
		global.global_stats.cherry -= 50;
		global.global_stats.cherry = clamp(global.global_stats.cherry,0,global.global_stats.cherry_max);
		if global.player_stats[_id].player_health <= 0 {
			scr_one_channel_sound(snd_pichuun);
			if global.global_stats.point_item >= 20 + (20 * global.player_stats[_id].timesrevived) {
				global.global_stats.point_item -= 20 + (20 * global.player_stats[_id].timesrevived);
				global.player_stats[_id].timesrevived += 1;
				global.global_stats[other.play_id].player_health = 30;
				randomize();
				if global.player_stats[_id].pow >= 9 {
					var inst = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item);
					inst.image_index = 2;
					for (var i = 0; i < 4; i += 1) {
						var inst = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
						inst.image_index = 0;
					}
				}
				instance_create_depth(x,y,0,obj_enemy_explosion);
				global.global_stats.cherry -= round(global.global_stats.cherry_max * (0.25 * global.global_stats.difficulty));
				global.global_stats.cherry = clamp(global.global_stats.cherry,0,global.global_stats.cherry_max);
				other.x_pos = 64 + (_id * 128)
				other.y_pos = 208
				other.invincible = true;
			}
			else {
				instance_destroy(other);
				global.player_stats[_id].player_active = 0;
				if global.player_stats[0].player_active = 0 and global.player_stats[1].player_active == 0 {
					instance_create_depth(0,0,0,obj_continue);
				}
			}
		}
	}
	else {
		scr_one_channel_sound(snd_pichuun)
		global.player_stats[_id].player_lives -= 1;
		if global.player_stats[_id].bombs < 3 {
			global.player_stats[_id].bombs = 3;
		}
		global.player_stats[_id].pow -= 12
		global.global_stats.cherry -= round(global.global_stats.cherry_max * (0.25 * global.global_stats.difficulty));
		global.global_stats.cherry = clamp(global.global_stats.cherry,0,global.global_stats.cherry_max);
		instance_destroy(obj_bullet_enemy);
		if global.player_stats[_id].player_lives >= 1 {
			randomize();
			if global.player_stats[_id].pow >= 9 {
				var inst = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item);
				inst.image_index = 2;
				for (var i = 0; i < 4; i += 1) {
					var inst = instance_create_depth(x + irandom_range(-32,32),y + irandom_range(-32,32),0,obj_item)
					inst.image_index = 0;
				}
			}
			instance_create_depth(x,y,0,obj_enemy_explosion);
			other.x_pos = 64 + (_id * 128)
			other.y_pos = 208
			other.invincible = true;
			
		}
		else {
			instance_destroy(other);
			global.player_stats[_id].player_active = 0;
			if global.player_stats[0].player_active == 0 and global.player_stats[1].player_active == 0 {
				instance_create_depth(0,0,0,obj_continue);
			}
		}
	}
	if instance_exists(obj_spell_banner_enemy) {
		with(obj_spell_banner_enemy) {
			failed = true;
		}
	}
	instance_destroy();
}