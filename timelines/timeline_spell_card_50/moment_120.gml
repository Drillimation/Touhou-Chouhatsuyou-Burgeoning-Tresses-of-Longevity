randomize();
for(var i = 0; i < (game_difficulty * 3) + 3; i++) {
	scr_shoot_bullet_enemy(irandom_range(0.5,1.5),irandom_range(0,360),choose(spr_bullet_small_2,spr_bullet_pellet),2,0,0,false,snd_enemy_fire)
}

direction = irandom_range(0,360);
speed = 1;
if hspeed < 0 { face = 1; }
if hspeed > 0 { face = 2; }