twt += 15;
if twt mod 120 == 0 {
	for(var i = 0; i < (game_difficulty * 6) + 12; i++) {
		scr_shoot_bullet_enemy(1.5,(360 / ((game_difficulty * 6) + 12)) * i,spr_bullet_seed_1,14,0,0,false,snd_enemy_fire_kira)
	}
	randomize();
	speed = 1;
	direction = irandom_range(0,360);
}
timeline_position = 125;