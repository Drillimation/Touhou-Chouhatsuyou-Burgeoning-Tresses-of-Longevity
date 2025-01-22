view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

x = view_xview + x_pos;
y = view_yview + y_pos;

x_pos += hspeed;
y_pos += vspeed;

depth = -y;
if grazable == true {
	if collision_circle(x,y,16,obj_player_1,false,false){
			global.player_stats[0].player_score += 50;
			global.player_stats[0].graze += 1;
			if instance_exists(obj_supernatural_border) {
				switch(obj_player_1.focusmode) {
					case true:
						global.global_stats.cherry_max += 8;
						break;
					case false:
						global.global_stats.cherry_max += 3;
						break;
				}
			}
			scr_one_channel_sound(snd_graze);
			grazable = false;
	}
	if collision_circle(x,y,16,obj_player_2,false,false){
			global.player_stats[1].player_score += 50;
			global.player_stats[1].player_score += 1;
			if instance_exists(obj_supernatural_border) {
				switch(obj_player_2.focusmode) {
					case true:
						global.global_stats.cherry_max += 8;
						break;
					case false:
						global.global_stats.cherry_max += 3;
						break;
				}
			}
			scr_one_channel_sound(snd_graze);
			grazable = false;
	}
}
switch (sprite_index) {
	case spr_bullet_small_1: image_angle = 0; break;
	case spr_bullet_small_2: image_angle = 0; break;
	case spr_bullet_small_3: image_angle = 0; break;
	case spr_bullet_kunai: image_angle = direction; break;
	case spr_bullet_arrow: image_angle = direction; break;
	case spr_bullet_seed_1: image_angle = direction; break;
	case spr_bullet_seed_2: image_angle = direction; break;
	case spr_bullet_laser: image_angle = direction; break;
	case spr_bullet_heart: image_angle = direction; break;
	case spr_bullet_med_1: image_angle = 0; break;
	case spr_bullet_med_2: image_angle = 0; break;
	case spr_bullet_dagger: image_angle = direction; break;
	case spr_bullet_large: image_angle = 0; break;
	case spr_bullet_arrowhead: image_angle = direction; break;
	case spr_bullet_amulet: image_angle = direction; break;
}