randomize();
for(var i = 0; i < game_difficulty + 5; i++) {
	scr_shoot_bullet_enemy(random_range(0.5,1.5),irandom_range(0,360),choose(spr_bullet_small_2,spr_bullet_pellet,spr_bullet_arrow),choose(2,10),0,0,false,snd_enemy_fire);
}