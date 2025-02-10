randomize();
for(var i = 0; i < (game_difficulty * 3) + 3; i++) {
	var ex = lengthdir_x(48,(360 / 16) * ammo);
	var ey = lengthdir_x(48,(360 / 16) * ammo);
	scr_shoot_bullet_enemy(random_range(1,1.25),irandom_range(0,360),spr_bullet_small_2,0,ex,ey,false,snd_enemy_fire);
}

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
randomize();
var inst = instance_create_depth(x,y,0,obj_warning_laser)
with(inst) {
	alarm[0] = 120;
	direction = (360 / 16) * other.ammo
	image_angle = direction;

	shoot_2d_min = 0;
	shoot_2d_max = 1;
	shoot_3d_min = 0;
	shoot_3d_max = 1;
	effect_script = scr_shoot_bullet_enemy;
	script_array = [0,direction,spr_bullet_laser,2,0,0,false,snd_enemy_fire_laser,true,scr_danmaku_scale,[20,1,20,1]];
}
ammo -= 1;