with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		randomize();
		dir = irandom_range(0,360)
		for(var i = 0; i < game_difficulty + 1; i++) {
			scr_shoot_bullet_enemy(1.25 - (i * 0.125),dir,spr_bullet_seed_2,12,0,0,false,snd_enemy_fire);
		}
	}
}
ammo -= 1;