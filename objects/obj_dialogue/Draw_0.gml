view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
draw_set_alpha(boss_opac);
draw_sprite(boss_sprite,0,view_xview + 128,view_yview + 96);
draw_set_alpha(1);