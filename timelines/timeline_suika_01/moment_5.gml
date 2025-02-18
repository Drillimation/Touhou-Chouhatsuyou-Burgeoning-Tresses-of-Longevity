for(var i = 0; i < (game_difficulty * 4) + 12; i++) {
	scr_shoot_bullet_enemy(1.25,((360 / ((game_difficulty * 4) + 12)) * i) + twt,spr_bullet_arrowhead,12,0,0,false,snd_enemy_fire)
}
twt += 7.5;