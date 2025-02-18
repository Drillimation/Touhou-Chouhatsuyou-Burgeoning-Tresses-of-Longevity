randomize();
for(var i = 0; i < (game_difficulty * 4) + 4; i += 1) {
	scr_shoot_bullet_enemy(random_range(1,2),irandom_range(0,180),choose(spr_bullet_pellet,spr_bullet_small_2,spr_bullet_seed_2),2,x_pos,256,false,snd_enemy_fire,false)
}
ammo -= 1;