for(var i = -6; i < 7; i++) {
	for(var j = 0; j < game_difficulty + 1; j++) {
		scr_shoot_bullet_enemy(1.25 - (0.125 * j),10 * i,spr_bullet_small_2,8,0,0,true,snd_enemy_fire);
	}
}