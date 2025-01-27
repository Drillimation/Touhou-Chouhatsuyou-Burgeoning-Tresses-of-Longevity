for(var i = 0; i < 10 + (game_difficulty * 2); i++) {
	scr_shoot_bullet_enemy(1,(360 / (10 + (game_difficulty * 2))) * i,spr_bullet_seed_2,5,0,0,true,snd_enemy_fire);
}