for(var i = 0; i < game_difficulty + 1; i++) {
	scr_shoot_bullet_enemy(1.5 - (0.125 * i),(360 / 32) * -ammo,spr_bullet_arrowhead,2,0,0,false,snd_enemy_fire);
}
ammo -= 1;