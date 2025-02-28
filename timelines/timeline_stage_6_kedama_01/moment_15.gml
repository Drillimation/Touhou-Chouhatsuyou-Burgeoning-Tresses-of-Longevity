for(var i = 0; i < game_difficulty + 1; i++) {
	scr_shoot_bullet_enemy(1.5 - (0.125 * i),direction + 45,spr_bullet_seed_1,0,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5 - (0.125 * i),direction - 45,spr_bullet_seed_1,0,0,0,false,snd_enemy_fire);
}