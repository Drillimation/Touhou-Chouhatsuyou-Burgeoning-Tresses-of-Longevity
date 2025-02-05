for(var i = 0; i < 4; i++) {
	for(var j = 0; j < 8; j++) {
		for(var k = 0; k < game_difficulty + 1; k++) {
			scr_shoot_bullet_enemy((1.5 - (0.05 * j)) - (0.1 * k),((360 / 4) * i) - (j * 10),spr_bullet_small_3,0,0,0,true,snd_enemy_fire)
		}
	}
}
randomize();
direction = irandom_range(0,360);
speed = 1.5;
if hspeed < 0 { face = 1; }
if hspeed > 0 { face = 2; }