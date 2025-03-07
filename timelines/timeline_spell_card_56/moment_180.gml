with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		instance_destroy();
		for(var i = 0; i < 12; i++) {
			scr_shoot_bullet_enemy(0.75,(360 / 12) * i,spr_bullet_small_2,15,0,0,false,snd_enemy_fire_kira);
		}
	}
}