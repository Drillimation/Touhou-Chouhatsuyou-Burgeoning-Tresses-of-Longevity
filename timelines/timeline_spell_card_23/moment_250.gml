with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 {
		instance_destroy();
	}
}
for(var i = 0; i < 6; i++) {
	scr_shoot_bullet_enemy(0,(360 / 6) * i,spr_bullet_med_2,12,0,0,false,snd_enemy_fire_kira,true,scr_danmaku_orbit,[48,-3,48,1,obj_kiyomi_true])
}
ammo = 12;