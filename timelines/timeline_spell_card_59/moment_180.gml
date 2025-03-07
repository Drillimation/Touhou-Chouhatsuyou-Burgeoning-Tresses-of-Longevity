with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		scr_shoot_bullet_enemy(1.25,direction + 0,spr_bullet_small_2,2,0,0,false,snd_enemy_fire_kira);
		scr_shoot_bullet_enemy(1.25,direction + 180,spr_bullet_small_2,2,0,0,false,snd_enemy_fire_kira);
	}
}