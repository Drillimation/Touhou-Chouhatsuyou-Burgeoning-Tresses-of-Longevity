for(var i = 0; i < (game_difficulty * 4) + 16; i++) {
	scr_shoot_bullet_enemy(1.5 - (ammo * 0.1),ran_dir + ((360 / ((game_difficulty * 4) + 16)) * i),spr_bullet_small_2,2,0,0,false,snd_enemy_fire);
}
ammo -= 1;