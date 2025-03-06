randomize();
for(var i = 0; i < (game_difficulty * 2) + 2; i++) {
	scr_shoot_bullet_enemy(1.5 - (0.1 * i),0,spr_bullet_arrowhead,2,0,0,true,snd_enemy_fire);
}
for(var i = 0; i < game_difficulty; i++) {
	scr_shoot_bullet_enemy(1,irandom_range(75,105),spr_bullet_med_2,2,0,0,false,snd_enemy_fire,true,scr_danmaku_gravity,[0.005]);
}