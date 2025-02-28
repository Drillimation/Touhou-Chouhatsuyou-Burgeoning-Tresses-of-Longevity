for(var i = 0; i < (game_difficulty * 2) + 10; i++) {
	scr_shoot_bullet_enemy(1.5 - (0.1 * ammo),((360 / ((game_difficulty * 2) + 10)) * i) + (10 * ammo),spr_bullet_arrowhead,12,0,0,false,snd_enemy_fire);
}
ammo -= 1;