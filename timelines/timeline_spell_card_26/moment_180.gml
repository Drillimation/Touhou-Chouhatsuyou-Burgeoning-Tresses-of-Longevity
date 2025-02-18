with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		instance_destroy();
		for(var i = 0; i < 16; i++) {
			scr_shoot_bullet_enemy(1.25,(360 / 16) * i,spr_bullet_arrow,12,0,0,false,snd_enemy_fire_kira)
		}
	}
}