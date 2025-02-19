for(var i = 0; i < (game_difficulty * 2) + 6; i++) {
	scr_shoot_bullet_enemy(1,(360 / ((game_difficulty * 2) + 6)) * i,spr_bullet_large,0,0,0,false,snd_enemy_fire,true,scr_danmaku_curve,
	[-1,2,true,60,true,[0,0,spr_bullet_small_1,0,0,0,false,snd_enemy_fire_kira,true,scr_danmaku_timed_disappear,[60]]])
	scr_shoot_bullet_enemy(1,(360 / ((game_difficulty * 2) + 6)) * i,spr_bullet_large,0,0,0,false,snd_enemy_fire,true,scr_danmaku_curve,
	[1,2,true,60,true,[0,0,spr_bullet_small_1,0,0,0,false,snd_enemy_fire_kira,true,scr_danmaku_timed_disappear,[60]]])
}