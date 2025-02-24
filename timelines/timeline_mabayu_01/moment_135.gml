with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 {
		instance_destroy();
	}
}
for(var i = 0; i < 8; i++) {
	scr_shoot_bullet_enemy(0,(360 / 8) * i,spr_bullet_med_2,8,0,0,false,snd_enemy_fire_kira,true,scr_danmaku_orbit,[48,-3,48,1,obj_mabayu])
}
ammo = 16;

if enemy_function == undefined {
	enemy_function = scr_enemy_set_friction;
	enemy_function_array = [0.01];
}