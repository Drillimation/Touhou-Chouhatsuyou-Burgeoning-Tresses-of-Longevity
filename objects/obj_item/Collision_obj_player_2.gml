switch(image_index) {
	case 0:
		scr_one_channel_sound(snd_get_item);
		if global.player_stats[other.play_id].pow == 100 {
			global.player_stats[other.play_id].player_score += (100 * global.global_stats.difficulty) + 100;
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = (100 * global.global_stats.difficulty) + 100;
		}
		else {
			global.player_stats[other.play_id].player_score += 10;
			global.player_stats[other.play_id].pow += 1
			global.player_stats[other.play_id].pow = clamp(global.player_stats[other.play_id].pow,0,100);
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = 10;
		}
		global.player_stats[other.play_id].total_power_items += 1;
		break;
	case 1:
		scr_one_channel_sound(snd_get_item);
		global.global_stats.point_item += 1;
		if other.y_pos <= 80 {
			global.player_stats[other.play_id].player_score += ((500 * global.global_stats.difficulty) + 500);
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = ((500 * global.global_stats.difficulty) + 500);
		}
		else
		{
			global.player_stats[other.play_id].player_score += (abs(round((y_pos / 10) - 30)) * 10);
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = (abs(round((y_pos / 10) - 30)) * 10);
		}
		global.player_stats[other.play_id].total_point_items += 1;
		break;
	case 2:
		scr_one_channel_sound(snd_get_item);
		if global.player_stats[other.play_id].pow == 100 {
			global.player_stats[other.play_id].player_score += (100 * global.global_stats.difficulty) + 100;
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = (100 * global.global_stats.difficulty) + 100;
		}
		else {
			global.player_stats[other.play_id].player_score += 50;
			global.player_stats[other.play_id].pow += 5
			global.player_stats[other.play_id].pow = clamp(global.player_stats[other.play_id].pow,0,100);
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = 50;
		}
		global.player_stats[other.play_id].total_power_items += 1;
		break;
	case 3:
		scr_one_channel_sound(snd_get_bomb);
		global.player_stats[other.play_id].player_score += 1000;
		global.bombs[other.play_id] += 1
		global.bombs[other.play_id] = clamp(global.bombs[other.play_id],0,10);
		var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
		inst1.display_score = 1000;
		break;
	case 4:
		scr_one_channel_sound(snd_get_item);
		global.player_stats[other.play_id].player_score += 1000;
		global.player_stats[other.play_id].pow = 100;
		var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
		inst1.display_score = 1000;
		break;
	case 5:
		if global.global_stats.breezy_mode == 0 {
			scr_one_channel_sound(snd_get_life);
			global.player_stats[other.play_id].player_lives += 1;
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = 1000;
		}
		else {
			scr_one_channel_sound(snd_heal);
			global.player_stats[other.play_id].player_health = 30;
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = 1000;
		}
		break;
	case 6:
		scr_one_channel_sound(snd_get_item);
		global.player_stats[other.play_id].total_cherry_items += 1;
		global.global_stats.cherry += 1;
		global.global_stats.cherry = clamp(global.global_stats.cherry,0,global.global_stats.cherry_max)
		global.global_stats.border += 1;
		global.player_stats[other.play_id].player_score += 100 + (global.player_stats[other.play_id].total_supernatural_borders * 10);
		var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
		inst1.display_score = 100 + (global.player_stats[other.play_id].total_supernatural_borders * 10);
		break;
	case 7:
		scr_one_channel_sound(snd_get_item);
		global.player_stats[other.play_id].total_cherry_items += 1;
		global.global_stats.cherry += 5;
		global.global_stats.cherry = clamp(global.global_stats.cherry,0,global.global_stats.cherry_max)
		global.global_stats.border += 5;
		global.player_stats[other.play_id].player_score += 100 + (global.player_stats[other.play_id].total_supernatural_borders * 10);
		var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
		inst1.display_score = 100 + (global.player_stats[other.play_id].total_supernatural_borders * 10);
		break;
}
instance_destroy();