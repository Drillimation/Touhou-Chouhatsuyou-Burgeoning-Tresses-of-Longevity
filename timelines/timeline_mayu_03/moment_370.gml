with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		instance_destroy();
	}
}
for(var i = 0; i < 3; i++) {
	scr_shoot_bullet_enemy(0,120 * i,spr_bullet_large,1,0,0,false,snd_enemy_fire_kira,true,scr_danmaku_orbit,[48,3,48,1,obj_mayu_true])
}
ammo = 20;