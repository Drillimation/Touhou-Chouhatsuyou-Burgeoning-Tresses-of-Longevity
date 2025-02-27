for(var i = -4 - game_difficulty; i < 5 + game_difficulty; i++) {
	scr_shoot_bullet_enemy(1.25,(180 + (ammo * 15)) + (i * 7.5),spr_bullet_arrowhead,0,0,0,false,snd_enemy_fire,true,scr_danmaku_curve,[-3,10,true]);
	scr_shoot_bullet_enemy(1.25,(180 + (ammo * 15)) - (i * 7.5),spr_bullet_arrowhead,0,0,0,false,snd_enemy_fire,true,scr_danmaku_curve,[-3,10,true]);
}
ammo -= 1;