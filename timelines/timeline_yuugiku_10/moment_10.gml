for(var i = 0 - game_difficulty; i < 1 + game_difficulty; i++) {
	scr_shoot_bullet_enemy(1.5,20 * i,spr_bullet_small_1,2,-32,-32,true,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5,20 * i,spr_bullet_small_1,2,-32,32,true,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5,20 * i,spr_bullet_small_1,2,32,-32,true,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5,20 * i,spr_bullet_small_1,2,32,32,true,snd_enemy_fire);
}
ammo -= 1;