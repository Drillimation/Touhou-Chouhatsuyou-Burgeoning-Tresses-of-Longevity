for(var i = 0; i < (game_difficulty * 2) + 6; i++) {
	scr_shoot_bullet_enemy(0.5 + (ammo * 0.25),((360 / ((game_difficulty * 2) + 6)) * i) - (15 * ammo),spr_bullet_med_2,2,0,0,false,snd_enemy_fire,true,scr_danmaku_friction,[0.02]);
}
ammo -= 1;