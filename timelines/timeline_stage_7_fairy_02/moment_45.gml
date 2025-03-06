for(var i = -2 - game_difficulty; i < 3 + game_difficulty; i++) {
	scr_shoot_bullet_enemy(0.5,i * 10,spr_bullet_seed_2,1,0,0,true,snd_enemy_fire);
}
for(var i = 0; i < (game_difficulty * 2) + 14; i++) {
	scr_shoot_bullet_enemy(1,(360 / ((game_difficulty * 2) + 14)) * i,spr_bullet_small_3,1,0,0,true,snd_enemy_fire);
}