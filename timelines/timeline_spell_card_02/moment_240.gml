with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_seed_2 {
		instance_destroy();
		scr_shoot_bullet_enemy(speed,direction + 45,sprite_index,image_index,0,0,false,snd_enemy_fire_kira)
		scr_shoot_bullet_enemy(speed,direction - 45,sprite_index,image_index,0,0,false,snd_enemy_fire_kira)
		for(var j = 0; j < 3; j++) {
			scr_shoot_bullet_enemy(0.9 - (j * 0.1),direction + 45,spr_bullet_seed_1,10,0,0,false,snd_enemy_fire);
			scr_shoot_bullet_enemy(0.9 - (j * 0.1),direction - 45,spr_bullet_seed_1,10,0,0,false,snd_enemy_fire);
		}
	}
	if sprite_index == spr_bullet_seed_1 {
		speed = 0;
	}
}