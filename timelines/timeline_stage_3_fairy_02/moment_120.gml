for(var i = 0; i < game_difficulty + 3; i++) {
	scr_shoot_bullet_enemy(1.5 - (i * 0.1),-15,spr_bullet_small_2,0,0,0,true,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5 - (i * 0.1),15,spr_bullet_small_2,0,0,0,true,snd_enemy_fire);
}
direction = 90;
speed = 1;
enemy_function = undefined;
enemy_function_array = [];
friction = 0;