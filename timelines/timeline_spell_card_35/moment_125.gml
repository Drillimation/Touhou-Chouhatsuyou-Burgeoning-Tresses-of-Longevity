for(var i = 0; i < (game_difficulty * 3) + 6; i++) {
	scr_shoot_bullet_enemy(1.25,(360 / ((game_difficulty * 3) + 6)) * i,spr_bullet_small_2,15,0,0,true,snd_enemy_fire)
}
if ammo mod 12 == 0 {
	for(var i = 0; i < (game_difficulty * 2) + 6; i++) {
		scr_shoot_bullet_enemy(1.5,(360 / ((game_difficulty * 2) + 6)) * i,spr_bullet_med_2,14,0,0,true,snd_enemy_fire_kira);
	}
}
ammo -= 1;