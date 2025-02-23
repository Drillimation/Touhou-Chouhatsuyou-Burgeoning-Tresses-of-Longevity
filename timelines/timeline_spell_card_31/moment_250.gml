for(var i = 0; i < 6; i++) {
	for(var j = 0; j < (game_difficulty * 2) + 6; j++) {
		scr_shoot_bullet_enemy(1.5 - (j * 0.1),((360 / 6) * i) + (j * 5),spr_bullet_arrowhead,12,0,0,true,snd_enemy_fire_kira);
		scr_shoot_bullet_enemy(1.5 - (j * 0.1),((360 / 6) * i) - (j * 5),spr_bullet_arrowhead,12,0,0,true,snd_enemy_fire_kira);
	}
}