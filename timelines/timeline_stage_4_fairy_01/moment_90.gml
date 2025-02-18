for(var i = 0; i < 12; i++) {
	for(var j = 0; j < game_difficulty + 1; j++) {
		scr_shoot_bullet_enemy(1.25 - (0.125 * j),((360 / 12) * i) + ((j * 5) + 2.5),spr_bullet_seed_1,5,0,0,true,snd_enemy_fire);
		scr_shoot_bullet_enemy(1.25 - (0.125 * j),((360 / 12) * i) - ((j * 5) + 2.5),spr_bullet_seed_1,5,0,0,true,snd_enemy_fire);
	}
}

direction = 90;
speed = 1;
enemy_function = undefined;
enemy_function_array = [];
friction = 0;