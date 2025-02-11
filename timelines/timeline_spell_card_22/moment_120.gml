ammo = 8;
for(var i = 0; i < 8; i++) {
	view_xview = camera_get_view_x(view_camera[0]);
	view_yview = camera_get_view_y(view_camera[0]);

	var inst = instance_create_depth(x,y,0,obj_warning_laser)
	with(inst) {
		alarm[0] = 60;
		if instance_exists(obj_player_1) {
			var tr = instance_nearest(x,y,obj_player_1)
			direction = point_direction(x,y,tr.x,tr.y) + (360 / 8) * i
		}
		else {
			direction = (360 / 8) * i
		}
		image_angle = direction;

		shoot_2d_min = 0;
		shoot_2d_max = 1;
		shoot_3d_min = 0;
		shoot_3d_max = 1;
		effect_script = scr_shoot_bullet_enemy;
		script_array = [0,direction,spr_bullet_laser,12,0,0,false,snd_enemy_fire_laser,true,scr_danmaku_scale,[20,1,20,1]];
	}
}