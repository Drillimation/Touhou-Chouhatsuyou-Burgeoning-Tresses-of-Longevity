with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_small_2 and image_index == 0 {
		instance_destroy();
		scr_shoot_bullet_enemy(speed + 0.5,direction + 180,spr_bullet_small_3,10,0,0,false,snd_enemy_fire_kira);
	}
}
randomize();
speed = 1;
direction = irandom_range(0,360);