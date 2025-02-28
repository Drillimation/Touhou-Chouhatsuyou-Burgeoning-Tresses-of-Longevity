for(var i = 0; i < 32; i++) {
	scr_shoot_bullet_enemy(0,270,spr_bullet_small_2,10,32 + (i * 8),0,false,snd_enemy_fire,true,scr_danmaku_gravity,[0.01]);
	scr_shoot_bullet_enemy(0,270,spr_bullet_small_2,10,-32 - (i * 8),0,false,snd_enemy_fire,true,scr_danmaku_gravity,[0.01]);
}
randomize();
dir = irandom_range(0,360);

if irandom(3) == 0 {
	for(var i = 0; i < (game_difficulty * 3) + 3; i++) {
		scr_shoot_bullet_enemy(1.5 - (0.05 * i),dir,spr_bullet_seed_2,8,0,0,false,snd_enemy_fire);
	}
	hspeed = choose(-1,1);
}