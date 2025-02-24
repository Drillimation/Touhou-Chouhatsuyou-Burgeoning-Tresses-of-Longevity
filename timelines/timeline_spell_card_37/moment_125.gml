var ex = lengthdir_x(64,ammo * 10);
var ey = lengthdir_y(64,ammo * 10);
scr_shoot_bullet_enemy(0,0,spr_bullet_large,2,ex,ey,false,snd_enemy_fire);
ammo -= 1;