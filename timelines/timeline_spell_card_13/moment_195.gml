with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		instance_destroy();
		randomize();
		for(var i = 0; i < game_difficulty + 5; i++) {
			scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(0,360),spr_bullet_small_1,10,0,0,false,snd_enemy_fire)
		}
	}
}