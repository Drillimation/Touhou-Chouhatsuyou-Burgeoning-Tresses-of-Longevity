for(var i = 0; i < game_difficulty + 1; i++) {
	for(var j = -1; j < 2; j++) {
		scr_shoot_bullet_enemy(1.5 - (0.125 * i),45 * j,spr_bullet_seed_1,0,0,0,true,snd_enemy_fire);
	}
}