for(var i = 0; i < 3; i++) {
	for(var j = 0; j < game_difficulty + 1; j++) {
		scr_shoot_bullet_enemy(1.5 - (0.125 * j),((360 / 3) * i) + twt,spr_bullet_small_2,1,0,0,false,snd_enemy_fire);
	}
}
for(var i = 0; i < (game_difficulty * 2) + 2; i++) {
	scr_shoot_bullet_enemy(0.5,irandom_range(255,285),choose(spr_bullet_pellet,spr_bullet_small_2),10,16,32,false,snd_enemy_fire,false,scr_danmaku_gravity,[0.01])
	scr_shoot_bullet_enemy(0.5,irandom_range(255,285),choose(spr_bullet_pellet,spr_bullet_small_2),10,240,32,false,snd_enemy_fire,false,scr_danmaku_gravity,[0.01])
}