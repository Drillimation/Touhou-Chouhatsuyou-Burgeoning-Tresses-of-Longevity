randomize();
for(var i = 0; i < (game_difficulty * 4) + 12; i++) {
	scr_shoot_bullet_enemy(0,0,spr_bullet_large,10,irandom_range(64,192),x + irandom_range(-24,24),false,snd_enemy_fire,false);
}