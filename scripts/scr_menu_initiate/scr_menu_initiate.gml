function scr_menu_initiate(_x,_y,_clamp = false,_clamp_max = 1) {
	if _clamp == true {
		inventory_scroll[0] = 0;
		inventory_scroll[1] = _clamp_max;
		scroll_clamp = 0;
	}
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

function scr_scroll_clamp_update(_x,_y,_clamp_max) {
	if _x == true {
		scroll_clamp += menu_move_x
		if menu_index_y > inventory_scroll[1] {
			scroll_clamp = _clamp_max
			inventory_scroll[0] = menu_index_x - _clamp_max
			inventory_scroll[1] = menu_index_x
		}
		if menu_index_x < inventory_scroll[0] {
			scroll_clamp = 0
			inventory_scroll[0] = menu_index_x
			inventory_scroll[1] = menu_index_x + _clamp_max
		}
	}
	if _y == true {
		scroll_clamp += menu_move_y
		if menu_index_y > inventory_scroll[1] {
			scroll_clamp = _clamp_max
			inventory_scroll[0] = menu_index_y - _clamp_max
			inventory_scroll[1] = menu_index_y
		}
		if menu_index_y < inventory_scroll[0] {
			scroll_clamp = 0
			inventory_scroll[0] = menu_index_y
			inventory_scroll[1] = menu_index_y + _clamp_max
		}
	}
}