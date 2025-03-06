randomize();
for(var i = 0; i < (game_difficulty * 2) + 4; i++) {
	dir = irandom_range(0,360)
	for(var j = 0; j < 4; j++) {
		scr_shoot_bullet_enemy(1.25 - (j * 0.125),dir,spr_bullet_arrowhead,15,0,0,false,snd_enemy_fire);
	}
}