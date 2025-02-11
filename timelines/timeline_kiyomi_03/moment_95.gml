with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_small_3 and image_index == 10 {
		instance_destroy();
		scr_shoot_bullet_enemy(1.5,direction + choose(-90,90),spr_bullet_arrowhead,12,0,0,false,snd_enemy_fire_kira);
	}
}