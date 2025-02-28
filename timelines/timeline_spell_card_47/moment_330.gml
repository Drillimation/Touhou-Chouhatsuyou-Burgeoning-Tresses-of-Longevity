with(obj_bullet_enemy) {
	instance_destroy();
	randomize();
	scr_shoot_bullet_enemy(1.25,irandom_range(0,360),sprite_index,image_index,0,0,false,snd_enemy_fire_kira);
}