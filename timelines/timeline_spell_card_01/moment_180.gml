with(obj_bullet_enemy) {
	instance_destroy();
	scr_shoot_bullet_enemy(speed,direction + 45,sprite_index,image_index,0,0,false,snd_enemy_fire_kira)
	scr_shoot_bullet_enemy(speed,direction - 45,sprite_index,image_index,0,0,false,snd_enemy_fire_kira)
}
timeline_position = 120;