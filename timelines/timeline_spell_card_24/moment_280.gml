randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 {
		for(var i = 0; i < game_difficulty + 1; i++) {
			for(var j = -1; j < 2; j++) {
				scr_shoot_bullet_enemy(1.25 - (0.125 * i),(direction + 90) + (j * 15),spr_bullet_arrowhead,12,0,0,false,snd_enemy_fire)
			}
		}
	}
}
ammo -= 1;