for(var i = 0; i < (game_difficulty * 4) + 12; i++) {
	scr_shoot_bullet_enemy(1.5,((360 / ((game_difficulty * 4) + 12)) * i) + (ammo * 15),spr_bullet_small_2,12,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(0.75,((360 / ((game_difficulty * 4) + 12)) * i) + (ammo * 15),spr_bullet_arrowhead,12,0,0,false,snd_enemy_fire,true,scr_danmaku_friction,[0.01]);
}
ammo -= 1;