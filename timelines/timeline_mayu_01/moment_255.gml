for(var i = 0; i < 16; i++) {
	for(var j = 0; j < game_difficulty + 1; j++) {
		scr_shoot_bullet_enemy(1 - (j * 0.1),(360 / 16) * i,spr_bullet_arrowhead,4,0,0,false,snd_enemy_fire,true,scr_danmaku_curve,[3,10,true]);
		scr_shoot_bullet_enemy(1 - (j * 0.1),(360 / 16) * i,spr_bullet_arrowhead,4,0,0,false,snd_enemy_fire,true,scr_danmaku_curve,[-3,10,true]);
	}
}
randomize();
hspeed = choose(-0.5,0.5);
if hspeed = -0.5 { face = 1; }
if hspeed = 0.5 { face = 2; }