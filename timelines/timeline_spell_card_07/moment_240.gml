for(var i = 0; i < (game_difficulty * 4) + 12; i++) {
	scr_shoot_bullet_enemy(1,(360 / ((game_difficulty * 4) + 12)) * i,spr_bullet_arrowhead,5,0,0,false,snd_enemy_fire,true,scr_danmaku_curve,[3,2,true,120]);
	scr_shoot_bullet_enemy(1,(360 / ((game_difficulty * 4) + 12)) * i,spr_bullet_arrowhead,5,0,0,false,snd_enemy_fire,true,scr_danmaku_curve,[-3,2,true,120]);
}