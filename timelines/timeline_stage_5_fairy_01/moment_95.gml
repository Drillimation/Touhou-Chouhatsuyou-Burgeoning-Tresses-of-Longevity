for(var j = -2; j < 3; j++) {
	scr_shoot_bullet_enemy(1.5 - (ammo * 0.1),ran_dir + (15 * j),spr_bullet_small_2,10,0,0,false,snd_enemy_fire);
}
scr_shoot_bullet_enemy(1.5 - (ammo * 0.1),ran_dir - 90,spr_bullet_small_2,9,0,0,false,snd_enemy_fire);
scr_shoot_bullet_enemy(1.5 - (ammo * 0.1),ran_dir + 90,spr_bullet_small_2,9,0,0,false,snd_enemy_fire);
ammo -= 1;