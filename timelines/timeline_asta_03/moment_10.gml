for(var i = 0; i < (game_difficulty * 2) + 6; i++) {
	for(var j = 0; j < 4; j++) {
		scr_shoot_bullet_enemy(1.25,((360 / ((game_difficulty * 2) + 6)) * i) - (j * 5) + twt,spr_bullet_arrowhead,0,0,0,false,snd_enemy_fire)
	}
}
twt += 7.5;
ammo -= 1;