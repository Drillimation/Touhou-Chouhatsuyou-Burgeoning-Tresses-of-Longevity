for(var i = 0; i < game_difficulty + 2; i++) {
	scr_shoot_bullet_enemy(1.25 - (i * 0.125),(45 * ammo) + 5,spr_bullet_small_2,5,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.25 - (i * 0.125),(45 * ammo) - 5,spr_bullet_small_2,5,0,0,false,snd_enemy_fire);
}
ammo -= 1;