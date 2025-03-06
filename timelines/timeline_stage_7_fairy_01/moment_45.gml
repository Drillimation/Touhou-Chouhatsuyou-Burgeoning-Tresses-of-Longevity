for(var i = 0; i < 2; i++) {
	for(var j = 0; j < game_difficulty + 1; j++) {
		scr_shoot_bullet_enemy(1.25 - (0.125 * j),2.5 + (5 * i),spr_bullet_small_2,0,0,0,true,snd_enemy_fire);
		scr_shoot_bullet_enemy(1.25 - (0.125 * j),-2.5 - (5 * i),spr_bullet_small_2,0,0,0,true,snd_enemy_fire);
	}
}
randomize();
direction = irandom_range(0,360);
speed = 1;
enemy_function = undefined;
enemy_function_array = [];
friction = 0;