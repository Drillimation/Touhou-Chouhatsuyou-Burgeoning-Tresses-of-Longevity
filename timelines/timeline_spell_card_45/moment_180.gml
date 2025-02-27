with(obj_bullet_enemy) {
	randomize();
	for(var i = 0; i < game_difficulty + 1; i++) {
		scr_shoot_bullet_enemy(0,choose(255,270,285),choose(spr_bullet_pellet,spr_bullet_small_2),15,0,0,false,snd_enemy_fire);
	}
}