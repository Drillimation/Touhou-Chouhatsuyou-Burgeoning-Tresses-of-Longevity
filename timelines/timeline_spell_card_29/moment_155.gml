if ammo >= 1 {
	timeline_position = 125;
}
else {
	randomize();
	for(var i = 0; i < (game_difficulty * 4) + 12; i++) {
		scr_shoot_bullet_enemy(1.5,(360 / ((game_difficulty * 4) + 12)) * i,spr_bullet_small_2,15,0,0,true,snd_enemy_fire_kira);
	}
	speed = 1.5;
	direction = irandom_range(0,360);
	if hspeed < 0 { face = 1; }
	if hspeed > 0 { face = 2; }
}