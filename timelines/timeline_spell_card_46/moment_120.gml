scr_shoot_bullet_enemy(1.5,0,spr_bullet_large,2,0,0,true,snd_enemy_fire);
randomize();
for(var i = 0; i < (16 * game_difficulty) + 16; i++) {
	scr_shoot_bullet_enemy(random_range(0.1,1.5),irandom_range(-5,5),choose(spr_bullet_small_2,spr_bullet_pellet),2,0,0,true,snd_enemy_fire);
}