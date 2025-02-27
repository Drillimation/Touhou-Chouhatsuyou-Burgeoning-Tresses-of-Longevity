randomize();
direction = irandom_range(0,360);
speed = 1;
if hspeed < 0 { face = 1; }
if hspeed > 0 { face = 2; }
for(var i = 0; i < (game_difficulty * 16) + 16; i++) {
	scr_shoot_bullet_enemy(random_range(0.5,1),irandom_range(0,360),choose(spr_bullet_small_2,spr_bullet_seed_1,spr_bullet_arrowhead,spr_bullet_arrow),0,0,0,false,snd_enemy_fire_kira);
}