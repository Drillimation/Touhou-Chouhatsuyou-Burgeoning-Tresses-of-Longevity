randomize();
for(var i = 0; i < 5 + game_difficulty; i++) {
	scr_shoot_bullet_enemy(0.5,irandom_range(255,285),spr_bullet_small_2,15,0,0,false,snd_enemy_fire,true,scr_danmaku_gravity,[0.01]);
}
ammo -= 1;