randomize();
ran_dir = irandom_range(0,360);
for(var i = 0; i < (game_difficulty * 8) + 8; i++) {
	scr_shoot_bullet_enemy(random_range(0.5,1.5),ran_dir + irandom_range(-15,15),spr_bullet_small_2,0,0,0,true,snd_enemy_fire);
}
for(var i = 0; i < 8; i++) {
	scr_shoot_bullet_enemy(1.4 - (i * 0.1),ran_dir,spr_bullet_seed_1,0,0,0,true,snd_enemy_fire);
}
scr_shoot_bullet_enemy(1.5,ran_dir,spr_bullet_large,0,0,0,true,snd_enemy_fire);