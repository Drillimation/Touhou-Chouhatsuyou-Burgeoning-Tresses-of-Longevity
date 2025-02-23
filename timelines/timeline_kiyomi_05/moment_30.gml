with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 {
		for(var i = 0; i < game_difficulty + 1; i++) {
			scr_shoot_bullet_enemy(1.25 - (i * 0.125),direction + 90,spr_bullet_small_2,2,0,0,false,snd_enemy_fire);
			scr_shoot_bullet_enemy(1.25 - (i * 0.125),direction - 90,spr_bullet_small_2,8,0,0,false,snd_enemy_fire);
		}
	}
}
ammo -= 1;