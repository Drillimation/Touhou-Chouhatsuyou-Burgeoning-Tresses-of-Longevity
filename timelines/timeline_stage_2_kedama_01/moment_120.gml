if call_attack == 2 {
	for(var i = 0; i < game_difficulty + 1; i++) {
		for(var j = -2; j < 3; j++) {
			scr_shoot_bullet_enemy(1 - (0.1 * i),(270 + ((128 - x_pos) / 2)) + (j * 20),spr_bullet_arrowhead,0,0,0,false,snd_enemy_fire);
		}
	}
}