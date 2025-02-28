with(obj_bullet_enemy) {
	randomize();
	if sprite_index == spr_bullet_large {
		for(var i = 0; i < game_difficulty + 1; i++) {
			scr_shoot_bullet_enemy(1,direction + irandom_range(-15,15),choose(spr_bullet_pellet,spr_bullet_small_2),15,0,0,false,snd_enemy_fire);
		}
	}
}