view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
randomize();
var inst = instance_create_depth(view_xview + choose(0,256),view_yview + 144,0,obj_warning_laser)
with(inst) {
	alarm[0] = 60;
	direction = irandom_range(-15,15);

	shoot_2d_min = 0;
	shoot_2d_max = 1;
	shoot_3d_min = 0;
	shoot_3d_max = 1;
	effect_script = scr_shoot_bullet_enemy;
	script_array = [0,direction,spr_bullet_laser,15,0,0,false,snd_enemy_fire_laser,true,scr_danmaku_scale,[20,1,20,1]];
}
ammo -= 1;