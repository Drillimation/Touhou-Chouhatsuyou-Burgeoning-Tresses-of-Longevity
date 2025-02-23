for(var i = 0; i < (game_difficulty * 4) + 12; i++) {
	scr_shoot_bullet_enemy(1.25,(360 / ((game_difficulty * 4) + 12)) * i,spr_bullet_arrowhead,10,0,0,true,snd_enemy_fire);
}