if ammo >= 1 {
	timeline_position = 50;
}
else {
	for(var i = 0; i < (game_difficulty * 4) + 8; i++) {
		scr_shoot_bullet_enemy(1.5,(360 / ((game_difficulty * 4) + 8)) * i,spr_bullet_med_2,10,0,0,true,snd_enemy_fire);
	}
	randomize();
	direction = irandom_range(0,360);
	speed = 1;
	if hspeed < 0 { face = 1; }
	if hspeed > 0 { face = 2; }
}