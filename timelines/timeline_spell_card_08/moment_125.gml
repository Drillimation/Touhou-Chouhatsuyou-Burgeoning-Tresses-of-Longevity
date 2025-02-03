for(var i = 0; i < 3; i++) {
	for(var j = 0; j < game_difficulty + 1; j++) {
		scr_shoot_bullet_enemy(1.5 - (0.125 * j),((360 / 3) * i) + twt,spr_bullet_small_2,1,0,0,false,snd_enemy_fire);
	}
}