#macro game_difficulty global.global_stats.difficulty
for(var i = 0; i < 16; i++) {
	for(var j = 0; j < game_difficulty; j++) {
		scr_shoot_bullet_enemy(1 - (j * 0.1),(360 / 16) * i,spr_bullet_small_2,5,0,0,false,snd_enemy_fire);
	}
}