with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_small_1 and image_index == 0 {
		instance_destroy();
		scr_shoot_bullet_enemy(1.25,direction + 180,spr_bullet_small_3,10,0,0,false,snd_enemy_fire_kira);
	}
}