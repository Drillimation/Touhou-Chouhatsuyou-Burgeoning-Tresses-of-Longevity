for(var i = 0; i < (game_difficulty * 4) + 12; i++) {
	scr_shoot_bullet_enemy(1.5,((360 / ((game_difficulty * 4) + 12)) * i) + (ammo * 15),spr_bullet_small_2,10,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(0.75,((360 / ((game_difficulty * 4) + 12)) * i) + (ammo * 15),spr_bullet_arrowhead,10,0,0,false,snd_enemy_fire,true,scr_danmaku_change_direction,[-90,true,60,snd_enemy_fire_kira]);
}
ammo -= 1;