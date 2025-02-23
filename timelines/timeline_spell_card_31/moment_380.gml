if ammo mod 4 == 0 {
	for(var i = 0; i < 12; i++) {
		for(var j = 0; j < game_difficulty + 1; j++) {
			scr_shoot_bullet_enemy(1.5 - (0.05 * j),((360 / 12) * i) + (j * 3),spr_bullet_note,0,0,0,true,snd_enemy_fire)
		}
	}
}

if ammo >= 1 {
	timeline_position = 375;
}