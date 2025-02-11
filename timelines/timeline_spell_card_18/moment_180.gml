with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		for(var i = -1; i < 2; i++) {
			instance_destroy();
			scr_shoot_bullet_enemy(1,direction + (15 * i),spr_bullet_med_2,0,0,0,false,snd_enemy_fire_kira);
		}
	}
}