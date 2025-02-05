if call_attack == 1 {
	for(var i = 0 - game_difficulty; i < 1 + game_difficulty; i++) {
		scr_shoot_bullet_enemy(1.25, i * 10,spr_bullet_small_2,0,0,0,true,snd_enemy_fire);
	}
}