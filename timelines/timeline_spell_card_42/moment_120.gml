for(var i = 0; i < 32; i++) {
	scr_shoot_bullet_enemy(0,270,spr_bullet_small_2,15,32 + (i * 8),0,false,snd_enemy_fire,true,scr_danmaku_gravity,[0.01]);
	scr_shoot_bullet_enemy(0,270,spr_bullet_small_2,15,-32 - (i * 8),0,false,snd_enemy_fire,true,scr_danmaku_gravity,[0.01]);
}
randomize();
if irandom(3) == 0 {
	hspeed = choose(-1,1);
}