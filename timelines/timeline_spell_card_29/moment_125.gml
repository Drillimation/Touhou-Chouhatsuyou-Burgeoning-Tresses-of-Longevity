randomize();
var ex = irandom_range(32,224)
var ey = irandom_range(48,144)
for(var i = 0; i < (game_difficulty * 2) + 6; i++) {
	scr_shoot_bullet_enemy(1.5,(360 / ((game_difficulty * 2) + 6)) * i,spr_bullet_laser,0,ex,ey,true,snd_enemy_fire_laser,false,scr_danmaku_scale,[5,1,0.1,0]);
}
ammo -= 1;