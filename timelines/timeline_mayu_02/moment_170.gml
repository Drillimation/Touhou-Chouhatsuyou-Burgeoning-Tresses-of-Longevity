for(var i = 0; i < game_difficulty + 2; i++) {
	scr_shoot_bullet_enemy(1.25 - (i * 0.125),180 - ((22.5 * ammo) + 5),spr_bullet_small_2,14,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.25 - (i * 0.125),180 - ((22.5 * ammo) - 5),spr_bullet_small_2,14,0,0,false,snd_enemy_fire);
	for(var j = -2; j < 3; j++) {
		scr_shoot_bullet_enemy(1.25 - (i * 0.125),(22.5 * ammo) + (j * 5),spr_bullet_seed_2,5,0,0,false,snd_enemy_fire);
	}
}
ammo -= 1;