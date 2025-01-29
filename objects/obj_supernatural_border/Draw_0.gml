view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

draw_set_alpha(opac);
draw_set_color(make_color_rgb(0,0,0));
draw_rectangle(view_xview + 0,view_yview + 0,view_xview + 255,view_yview + 287,false);
draw_set_alpha(1);