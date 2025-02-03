for(var i = 0; i < game_difficulty + 4; i++) {
	scr_shoot_bullet_enemy(1,((360 / (game_difficulty + 4)) * i) + (ammo * 15),spr_bullet_arrow,10,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1,((360 / (game_difficulty + 4)) * i) - (ammo * 15),spr_bullet_arrow,10,0,0,false,snd_enemy_fire);
}
ammo -= 1;