for(var i = 0; i < game_difficulty + 1; i++) {
	for(var j = -2; j < 3; j++) {
		scr_shoot_bullet_enemy(1.25 - (i * 0.125),15 * j,spr_bullet_small_2,10,0,0,true,snd_enemy_fire);
	}
	scr_shoot_bullet_enemy(1.25 - (i * 0.125),-90,spr_bullet_small_2,10,0,0,true,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.25 - (i * 0.125),90,spr_bullet_small_2,10,0,0,true,snd_enemy_fire);
}
direction = 90;
speed = 1;
enemy_function = undefined;
enemy_function_array = [];
friction = 0;