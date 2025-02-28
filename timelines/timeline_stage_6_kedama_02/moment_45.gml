for(var i = 0; i < game_difficulty + 1; i++) {
	for(var j = -1; j < 2; j++) {
		scr_shoot_bullet_enemy(1.5 - (0.125 * i),22.5 * j,spr_bullet_arrowhead,5,0,0,true,snd_enemy_fire);
	}
}