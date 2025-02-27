for(var i = -8; i < 8; i++) {
	view_xview = camera_get_view_x(view_camera[0]);
	view_yview = camera_get_view_y(view_camera[0]);

	var inst = instance_create_depth(obj_player_1.x + (32 * i),view_yview + 0,0,obj_warning_laser)
	with(inst) {
		alarm[0] = 60;
		direction = 270
		image_angle = direction;

		shoot_2d_min = 0;
		shoot_2d_max = 1;
		shoot_3d_min = 0;
		shoot_3d_max = 1;
		effect_script = scr_shoot_bullet_enemy;
		script_array = [0,direction,spr_bullet_laser,0,0,0,false,snd_enemy_fire_laser,true,scr_danmaku_scale,[20,1,20,1]];
	}
}