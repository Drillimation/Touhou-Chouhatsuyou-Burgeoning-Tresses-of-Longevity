for(var i = 0; i < game_difficulty + 1; i++) {
	for(var j = 0; j < 32; j++) {
		scr_shoot_bullet_enemy(1.5 - (0.125 * i),(360 / 32) * j,spr_bullet_dagger,0,0,0,false,snd_enemy_fire);
	}
}

randomize();
direction = irandom_range(0,360);
speed = 1;
if hspeed < 0 { face = 1; }
if hspeed > 0 { face = 2; }