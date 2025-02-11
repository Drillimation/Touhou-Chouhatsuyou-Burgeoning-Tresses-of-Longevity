for(var i = 0; i < (game_difficulty * 3) + 6; i++) {
	var ex = lengthdir_x(ammo * 6,(360 / ((game_difficulty * 3) + 6)) * i)
	var ey = lengthdir_y(ammo * 6,(360 / ((game_difficulty * 3) + 6)) * i)
	for(var j = 0; j < 8; j++) {
		scr_shoot_bullet_enemy(1.25,(360 / 8) * j,spr_bullet_seed_1,0,ex,ey,true,snd_enemy_fire);
	}
}
ammo -= 1;