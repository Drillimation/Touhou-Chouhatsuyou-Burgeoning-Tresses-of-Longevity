instance_destroy();
view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
instance_create_depth(view_xview + 0, view_yview + 0,0,obj_start_grid);