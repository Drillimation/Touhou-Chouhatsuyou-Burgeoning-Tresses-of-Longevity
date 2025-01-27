if call_attack == 2 {
	for(var i = 0; i < 10 + (game_difficulty * 2); i++) {
		scr_shoot_bullet_enemy(1.25,(360 / (10 + (game_difficulty * 2))) * i,spr_bullet_small_2,5,0,0,false,snd_enemy_fire);
	}
}