for(var i = 0; i < (game_difficulty * 2) + 6; i++) {
	for(var j = 0; j < 2; j++) {
		scr_shoot_bullet_enemy(1.5 - (0.5 * j),(360 / ((game_difficulty * 2) + 6)) * i,spr_bullet_amulet,2,0,0,true,snd_enemy_fire);
	}
}