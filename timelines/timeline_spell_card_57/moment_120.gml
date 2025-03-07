for(var i = 0; i < (game_difficulty * 2) + 10; i++) {
	scr_shoot_bullet_enemy(0,(360 / ((game_difficulty * 2) + 10)) * i,spr_bullet_large,0,0,0,true,snd_enemy_fire_kira,true,scr_danmaku_orbit,[48,3,48,1,obj_yuugiku_ex])
}