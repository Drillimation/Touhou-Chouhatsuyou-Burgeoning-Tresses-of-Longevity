randomize();
for(var i = 0; i < (game_difficulty * 2) + 8; i++) {
	scr_shoot_bullet_enemy(random_range(0.5,1),90,spr_bullet_small_2,15,irandom_range(8,248),264,false,snd_enemy_fire,false);
}