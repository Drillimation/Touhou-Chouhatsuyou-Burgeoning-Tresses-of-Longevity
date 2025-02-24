for(var i = 0; i < 16; i++) {
	for(var j = 0; j < game_difficulty + 1; j++) {
		scr_shoot_bullet_enemy(1.25 - (0.125 * j),((360 / 16) * i) - (j * 10),spr_bullet_small_3,2,0,0,true,snd_enemy_fire_kira);
	}
}
randomize();
direction = irandom_range(0,360);
speed = 1;
if hspeed < 0 { face = 1; }
if hspeed > 0 { face = 2; }