for(var i = 0; i < 8; i++) {
	scr_shoot_bullet_enemy(0,(360 / 8) * i,spr_bullet_med_2,2,0,0,false,snd_enemy_fire_kira,true,scr_danmaku_orbit,[32,2,32,1,obj_mabayu_st6])
	scr_shoot_bullet_enemy(0,(360 / 8) * i,spr_bullet_med_2,2,0,0,false,snd_enemy_fire_kira,true,scr_danmaku_orbit,[64,-2,64,1,obj_mabayu_st6])
}
ammo = 4;

if enemy_function == undefined {
	enemy_function = scr_enemy_set_friction;
	enemy_function_array = [0.01];
}