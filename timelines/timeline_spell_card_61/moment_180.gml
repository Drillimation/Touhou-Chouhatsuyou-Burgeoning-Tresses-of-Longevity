randomize();
dir = irandom_range(0,360);
var ex = lengthdir_x(48,dir)
var ey = lengthdir_y(48,dir)
for(var i = 0; i < (game_difficulty * 2) + 10; i++) {
	scr_shoot_bullet_enemy(random_range(0.75,1.25),irandom_range(0,360),spr_bullet_small_2,15,ex,ey,false,snd_enemy_fire_kira);
}