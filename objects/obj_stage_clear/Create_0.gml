scr_stop_bgm();
audio_play_sound(snd_bgm_stage_clear,10,false);
alarm[0] = 600;

if global.global_stats.breezy_mode == 0 {
	left_text = @"RANK

	CHERRY

	POINT

	BOMBS

	LIVES

	POWER

	TOTAL"
	for (var i = 0; i < 2; i++) {
		difficulty_bonus[i] = round(global.global_stats.difficulty * 1000);
		dream_bonus[i] = round(round(global.global_stats.cherry / 10) * 10);
		point_bonus[i] = round(global.global_stats.point_item * 100);
		
		bomb_bonus[i] = round(global.player_stats[i].bombs * 500);
		lives_bonus[i] = round(global.player_stats[i].player_lives * 1000);
		power_bonus[i] = round(global.player_stats[i].pow * 100);
		total[i] = difficulty_bonus[i] + dream_bonus[i] + point_bonus[i] + bomb_bonus[i] + lives_bonus[i] + power_bonus[i];
		if global.player_stats[i].player_active == 1 {
			global.player_stats[i].player_score += total[i]
		}
		statistics[i] = string(difficulty_bonus[i]) + "\n\n" + string(dream_bonus[i]) + "\n\n" + string(point_bonus[i]) + "\n\n" + string(bomb_bonus[i]) + "\n\n" + string(lives_bonus[i]) + "\n\n" + string(power_bonus[i]) + "\n\n" + string(total[i]);
	}
}
else {
	left_text = @"RANK

	CHERRY

	POINT

	BOMBS

	HEALTH

	POWER

	TOTAL"
	for (var i = 0; i < 2; i += 1) {
		difficulty_bonus[i] = round(global.global_stats.difficulty * 1000);
		dream_bonus[i] = round(round(global.global_stats.cherry / 10) * 10);
		point_bonus[i] = round(global.global_stats.point_item * 100);
		
		bomb_bonus[i] = round(global.player_stats[i].bombs * 500);
		health_bonus[i] = round(global.player_stats[i].player_health * 100);
		power_bonus[i] = round(global.player_stats[i].pow * 100);
		total[i] = difficulty_bonus[i] + dream_bonus[i] + point_bonus[i] + bomb_bonus[i] + health_bonus[i] + power_bonus[i];
		if global.player_stats[i].player_active == 1 {
			global.player_stats[i].player_score += total[i]
		}
		statistics[i] = string(difficulty_bonus[i]) + "\n\n" + string(dream_bonus[i]) + "\n\n" + string(point_bonus[i]) + "\n\n" + string(bomb_bonus[i]) + "\n\n" + string(health_bonus[i]) + "\n\n" + string(power_bonus[i]) + "\n\n" + string(total[i]);
	}
}

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);