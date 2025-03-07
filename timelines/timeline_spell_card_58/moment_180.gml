with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		randomize();
		dir = irandom_range(0,360)
		for(var i = 0; i < game_difficulty + 5; i++) {
			scr_shoot_bullet_enemy(1,(360 / (game_difficulty + 5)) * i,spr_bullet_seed_2,choose(0,12,15),0,0,false,snd_enemy_fire);
		}
	}
}
ammo -= 1;