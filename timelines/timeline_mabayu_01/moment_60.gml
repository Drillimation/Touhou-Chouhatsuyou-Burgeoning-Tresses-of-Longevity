with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 {
		for(var i = 0; i < (game_difficulty * 2) + 6; i++) { 
			scr_shoot_bullet_enemy(1.25,(360 / ((game_difficulty * 2) + 6)) * i,spr_bullet_small_2,14,0,0,true,snd_enemy_fire);
		}
	}
}
ammo -= 1;