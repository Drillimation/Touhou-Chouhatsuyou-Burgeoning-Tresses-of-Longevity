with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		instance_destroy();
		for(var i = 0; i < 8; i++) {
			scr_shoot_bullet_enemy(1.25,(360 / 8) * i,spr_bullet_arrow,12,0,0,false,snd_enemy_fire_kira)
		}
	}
}