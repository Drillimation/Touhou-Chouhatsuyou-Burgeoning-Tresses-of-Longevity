randomize();
for(var i = 0; i < (game_difficulty * 2) + 6; i++) {
	scr_shoot_bullet_enemy(1,(360 / ((game_difficulty * 2) + 6)) * i,spr_bullet_large,0,0,0,true,snd_enemy_fire,true,scr_danmaku_shoot_more,[20,99,true,
	[0,irandom_range(0,360),spr_bullet_small_2,0,0,0,false,snd_enemy_fire_kira,true,scr_danmaku_change_speed,[1,0.001]]])
}