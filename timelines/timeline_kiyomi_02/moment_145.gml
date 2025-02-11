for(var i = 0; i < (game_difficulty * 4) + 12; i++) {
	for(var j = 0; j < game_difficulty + 1; j++) {
		scr_shoot_bullet_enemy(0.75 - (0.1 * j),((360 / ((game_difficulty * 4) + 12)) * i) + (j * 5),spr_bullet_small_2,0,0,0,true,snd_enemy_fire);
	}
}