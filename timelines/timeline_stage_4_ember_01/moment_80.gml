if ammo >= 1 {
	timeline_position = 65;
}
else {
	instance_destroy();
	for(var i = 0; i < (game_difficulty * 2) + 8; i++) {
		scr_shoot_bullet_enemy(1,(360 / ((game_difficulty * 2) + 8)) * i,spr_bullet_med_1,14,0,0,true,snd_enemy_fire_kira);
	}
}