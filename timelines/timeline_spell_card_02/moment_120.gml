for(var i = 0; i < 10 + (game_difficulty * 2); i++) {
	scr_shoot_bullet_enemy(1,(360 / (10 + (game_difficulty * 2))) * i,spr_bullet_seed_2,5,0,0,true,snd_enemy_fire);
	for(var j = 0; j < 3; j++) {
		scr_shoot_bullet_enemy(0.9 - (j * 0.1),(360 / (10 + (game_difficulty * 2))) * i,spr_bullet_seed_1,10,0,0,true,snd_enemy_fire);
	}
}