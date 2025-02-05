randomize();
for(var i = 0; i < (game_difficulty * 5) + 10; i++) {
	scr_shoot_bullet_enemy(random_range(0.5,1.25),0,choose(spr_bullet_small_2,spr_bullet_seed_1),choose(10,15),8,irandom_range(24,264),false,snd_enemy_fire_kira,false)
	scr_shoot_bullet_enemy(random_range(0.5,1.25),180,choose(spr_bullet_small_2,spr_bullet_seed_1),choose(10,15),248,irandom_range(24,264),false,snd_enemy_fire_kira,false)
}
direction = irandom_range(0,360);
speed = 1;
if hspeed < 0 { face = 1; }
if hspeed > 0 { face = 2; }