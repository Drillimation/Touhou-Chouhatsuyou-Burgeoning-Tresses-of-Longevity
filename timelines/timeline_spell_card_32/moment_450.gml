with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 {
		instance_destroy();
		randomize();
		for(var i = 0; i < 4; i++) {
			scr_shoot_bullet_enemy(random_range(0.5,0.75),irandom_range(0,360),spr_bullet_small_2,1,0,0,false,snd_enemy_fire_kira);
		}
	}
}