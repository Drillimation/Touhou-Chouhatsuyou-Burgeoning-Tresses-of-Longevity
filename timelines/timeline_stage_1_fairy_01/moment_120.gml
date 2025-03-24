for(var i = 0; i < game_difficulty + 1; i++) {
	scr_shoot_bullet_enemy(0.75,2.5 + (5 * i),spr_bullet_pellet,15,0,0,true,snd_enemy_fire);
	scr_shoot_bullet_enemy(0.75,-2.5 - (5 * i),spr_bullet_pellet,15,0,0,true,snd_enemy_fire);
}
randomize();
direction = irandom_range(0,360);
speed = 1;
enemy_function = undefined;
enemy_function_array = [];
friction = 0;