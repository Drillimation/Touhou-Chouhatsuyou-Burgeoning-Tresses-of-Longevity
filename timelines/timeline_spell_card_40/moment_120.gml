with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 {
		instance_destroy();
		for(var i = 0; i < (game_difficulty * 4) + 12; i++) {
			scr_shoot_bullet_enemy(1.25,(360 / ((game_difficulty * 4) + 12)) * i, spr_bullet_small_3,2,0,0,false,snd_enemy_fire_kira);
		}
	}
}
randomize();
for(var i = 0; i < (game_difficulty * 2) + 4; i++) {
	scr_shoot_bullet_enemy(0,0,spr_bullet_large,4,irandom_range(32,224),irandom_range(32,144),false,snd_enemy_fire,false);
}