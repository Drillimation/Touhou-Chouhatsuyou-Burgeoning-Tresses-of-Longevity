for(var i = 0; i < game_difficulty + 1; i++) {
	for(var j = -2; j < 3; j++) {
		scr_shoot_bullet_enemy(1.5 - (0.25 * i),15 * j,spr_bullet_seed_1,2,0,0,true,snd_enemy_fire);
	}
}