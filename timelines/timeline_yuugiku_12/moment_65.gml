for(var i = 0; i < 8; i++) {	
	var ex = lengthdir_x(32,(i * 135));
	var ey = lengthdir_y(32,(i * 135));
	for(var j = 0; j < (game_difficulty * 6) + 2; j++) {
		scr_shoot_bullet_enemy(1.25,(360 / ((game_difficulty * 6) + 2)) * j,spr_bullet_small_1,2,0,0,true,snd_enemy_fire);
	}
}
randomize();
direction = irandom_range(0,360);
speed = 1;
if hspeed < 0 { face = 1; }
if hspeed > 0 { face = 2; }