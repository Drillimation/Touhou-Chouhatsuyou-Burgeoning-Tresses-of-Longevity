function scr_menu_initiate(_x,_y){
	if _x == true { buttons_x = array_length(button); }
	if _y == true { buttons_y = array_length(button); }
	menu_index_x = 0;
	menu_index_y = 0;
	last_selected_x = 0;
	last_selected_y = 0;
	next = false;
	prev = false;
	next_row = false;
	prev_row = false;

	view_xview = camera_get_view_x(view_camera[0]);
	view_yview = camera_get_view_y(view_camera[0]);
}