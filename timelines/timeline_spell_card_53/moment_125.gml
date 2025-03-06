with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		scr_shoot_bullet_enemy(0,direction,spr_bullet_small_2,15,0,0,false,snd_enemy_fire);
	}
}
ammo -= 1;