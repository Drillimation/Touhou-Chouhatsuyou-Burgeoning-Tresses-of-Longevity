randomize();
for(var i = 0; i < (game_difficulty * 4) + 12; i++) {
	var ex = irandom_range(-48,48);
	var ey = irandom_range(-48,48);
	scr_shoot_bullet_enemy(1,(360 / ((game_difficulty * 4) + 12)) * i,spr_bullet_seed_1,10,ex,ey,true,snd_enemy_fire);
}
ammo -= 1;