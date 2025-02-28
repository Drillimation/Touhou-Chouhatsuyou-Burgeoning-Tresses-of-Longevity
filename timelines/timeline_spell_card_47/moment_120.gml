randomize();
for(var j = 0; j < 2; j++) {
	var dir = irandom_range(0,360);
	scr_shoot_bullet_enemy(1.5,dir,spr_bullet_large,2,0,0,false,snd_enemy_fire);
	for(var i = 0; i < (12 * game_difficulty) + 12; i++) {
		scr_shoot_bullet_enemy(random_range(0.1,1.5),dir + irandom_range(-5,5),choose(spr_bullet_small_2,spr_bullet_pellet),2,0,0,false,snd_enemy_fire);
	}
}