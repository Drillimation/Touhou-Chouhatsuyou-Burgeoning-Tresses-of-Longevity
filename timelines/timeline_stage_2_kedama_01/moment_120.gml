if call_attack == 2 {
	for(var i = -2 - game_difficulty; i < game_difficulty + 3; i++) {
		scr_shoot_bullet_enemy(1,(270 + ((128 - x_pos) / 2)) + (i * 20),spr_bullet_seed_1,0,0,0,false,snd_enemy_fire);
	}
}