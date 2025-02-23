for(var i = 0; i < game_difficulty + 1; i++) {
	for(var j = -1; j < 2; j++) {
		scr_shoot_bullet_enemy(1.25 - (i * 0.125),(-22.5 * ammo) + (5 * j),spr_bullet_note,10,0,0,false,snd_enemy_fire);
	}
}
ammo -= 1;