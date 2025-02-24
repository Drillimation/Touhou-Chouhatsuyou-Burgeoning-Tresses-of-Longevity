randomize();
for(var i = 0; i < (game_difficulty * 4) + 4; i++) {
	var ex = lengthdir_x(32,(360 / ((game_difficulty * 4) + 4)) * i);
	var ey = lengthdir_y(32,(360 / ((game_difficulty * 4) + 4)) * i);
	for(var j = 0; j < 4; j++) {
		scr_shoot_bullet_enemy(random_range(0.5,1),irandom_range(0,360),spr_bullet_small_2,0,ex,ey,false,snd_enemy_fire);
	}
}