if call_attack == 2 {
	for(var i = 0; i < 14 + (game_difficulty * 2); i++) {
		scr_shoot_bullet_enemy(1.25,(360 / (14 + (game_difficulty * 2))) * i,spr_bullet_seed_1,0,0,0,false,snd_enemy_fire);
	}
}