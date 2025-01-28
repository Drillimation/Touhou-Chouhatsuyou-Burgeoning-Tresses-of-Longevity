view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
x_pos = x - view_xview;
y_pos = y - view_yview;

alarm[0] = 120;
effect_script = scr_shoot_bullet_enemy;
script_array = [0,direction,spr_bullet_laser,15,0,0,false,snd_enemy_fire_laser];

shoot_2d_min = 0;
shoot_2d_max = 1;
shoot_3d_min = 0;
shoot_3d_max = 1;
_i = 0;
_j = 0;