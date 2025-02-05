randomize();
for(var i = 0; i < (game_difficulty * 5) + 10; i++) {
	scr_shoot_bullet_enemy(random_range(0.5,1),0,spr_bullet_small_2,10,8,irandom_range(24,264),false,snd_enemy_fire_kira,false)
	scr_shoot_bullet_enemy(random_range(0.5,1),180,spr_bullet_small_2,10,248,irandom_range(24,264),false,snd_enemy_fire_kira,false)
}
direction = irandom_range(0,360);
speed = 1;
if hspeed < 0 { face = 1; }
if hspeed > 0 { face = 2; }