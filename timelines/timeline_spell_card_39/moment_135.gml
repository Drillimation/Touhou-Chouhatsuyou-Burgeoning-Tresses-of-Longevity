for(var i = 0; i < (game_difficulty * 6) + 6; i++) {
	scr_shoot_bullet_enemy(1.25,(360 / ((game_difficulty * 6) + 6)) * i,spr_bullet_small_3,2,0,0,true,snd_enemy_fire_kira);
}