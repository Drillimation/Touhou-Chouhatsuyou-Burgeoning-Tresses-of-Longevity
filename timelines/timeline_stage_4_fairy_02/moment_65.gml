for(var i = 0; i < (game_difficulty * 2) + 10; i++) {
	scr_shoot_bullet_enemy(1.5,((360 / ((game_difficulty * 2) + 10)) * i) + tgt,spr_bullet_arrow,14,0,0,false,snd_enemy_fire);
}
ammo -= 1;