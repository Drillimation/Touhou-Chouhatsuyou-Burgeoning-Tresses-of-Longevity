with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		for(var i = 0; i < 4; i++) {
			scr_shoot_bullet_enemy(0.75,irandom_range(0,360),choose(spr_bullet_pellet,spr_bullet_small_2),0,0,0,false,snd_enemy_fire_kira);
		}
	}
}