//Y axis
function scr_menu_input() {
	if (abs(gamepad_axis_value(0, gp_axislv) > 0) and (alarm[0] <= 0)) { 
		next = !prev;
		prev = sign(gamepad_axis_value(0, gp_axislv) > 0);
		alarm[0] = 60 * 0.15;
	} else { prev = false; }
	if (abs(gamepad_axis_value(0, gp_axislv) < 0) and (alarm[0] <= 0)) { 
		next = sign(gamepad_axis_value(0, gp_axislv) < 0); 
		prev = !next;
		alarm[0] = 60 * 0.15;
	} else { next = false; }

	menu_move_y = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up) | keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))| gamepad_button_check_pressed(0,gp_padd) - gamepad_button_check_pressed(0,gp_padu) | prev - next;

	gamepad_set_axis_deadzone(0,0.5);
	
	menu_index_y += menu_move_y;
	if (menu_index_y < 0) menu_index_y = buttons_y - 1;
	if (menu_index_y > buttons_y - 1) menu_index_y = 0;

	if (menu_index_y != last_selected_y) scr_one_channel_sound(snd_menuselect)

	last_selected_y = menu_index_y;
}
//X axis
function scr_menu_input_2d() {
if (abs(gamepad_axis_value(0, gp_axislh) > 0) and (alarm[1] <= 0)) { 
		next_row = !prev_row;
		prev_row = sign(gamepad_axis_value(0, gp_axislh) > 0);
		alarm[1] = 60 * 0.15;
	} else { prev_row = false; }
	if (abs(gamepad_axis_value(0, gp_axislh) < 0) and (alarm[1] <= 0)) { 
		next_row = sign(gamepad_axis_value(0, gp_axislh) < 0); 
		prev_row = !next_row;
		alarm[1] = 60 * 0.15;
	} else { next_row = false; }

	menu_move_x = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left) | keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"))| gamepad_button_check_pressed(0,gp_padr) - gamepad_button_check_pressed(0,gp_padl) | prev_row - next_row;

	gamepad_set_axis_deadzone(0,0.5);
	
	menu_index_x += menu_move_x;
	if (menu_index_x < 0) menu_index_x = buttons_x - 1;
	if (menu_index_x > buttons_x - 1) menu_index_x = 0;

	if (menu_index_x != last_selected_x) scr_one_channel_sound(snd_menuselect)

	last_selected_x = menu_index_x;
}

//Y axis 2P
function scr_menu_input_2p() {
	if (abs(gamepad_axis_value(1, gp_axislv) > 0) and (alarm[0] <= 0)) { 
		next = !prev;
		prev = sign(gamepad_axis_value(1, gp_axislv) > 0);
		alarm[0] = 60 * 0.15;
	} else { prev = false; }
	if (abs(gamepad_axis_value(1, gp_axislv) < 0) and (alarm[0] <= 0)) { 
		next = sign(gamepad_axis_value(1, gp_axislv) < 0); 
		prev = !next;
		alarm[0] = 60 * 0.15;
	} else { next = false; }

	menu_move_y = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up) | keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))| gamepad_button_check_pressed(0,gp_padd) - gamepad_button_check_pressed(0,gp_padu) | prev - next;

	gamepad_set_axis_deadzone(1,0.5);
	
	menu_index_y += menu_move_y;
	if (menu_index_y < 0) menu_index_y = buttons_y - 1;
	if (menu_index_y > buttons_y - 1) menu_index_y = 0;

	if (menu_index_y != last_selected_y) scr_one_channel_sound(snd_menuselect)

	last_selected_y = menu_index_y;
}
//X axis 2P
function scr_menu_input_2d_2p() {
if (abs(gamepad_axis_value(1, gp_axislh) > 0) and (alarm[1] <= 0)) { 
		next_row = !prev_row;
		prev_row = sign(gamepad_axis_value(1, gp_axislh) > 0);
		alarm[1] = 60 * 0.15;
	} else { prev_row = false; }
	if (abs(gamepad_axis_value(1, gp_axislh) < 0) and (alarm[1] <= 0)) { 
		next_row = sign(gamepad_axis_value(1, gp_axislh) < 0); 
		prev_row = !next_row;
		alarm[1] = 60 * 0.15;
	} else { next_row = false; }

	menu_move_x = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left) | keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"))| gamepad_button_check_pressed(1,gp_padr) - gamepad_button_check_pressed(1,gp_padl) | prev_row - next_row;

	gamepad_set_axis_deadzone(1,0.5);
	
	menu_index_x += menu_move_x;
	if (menu_index_x < 0) menu_index_x = buttons_x - 1;
	if (menu_index_x > buttons_x - 1) menu_index_x = 0;

	if (menu_index_x != last_selected_x) scr_one_channel_sound(snd_menuselect)

	last_selected_x = menu_index_x;
}

//Y axis pause
function scr_menu_input_pause() {
	if (abs(gamepad_axis_value(_id, gp_axislv) > 0) and (alarm[0] <= 0)) { 
		next = !prev;
		prev = sign(gamepad_axis_value(_id, gp_axislv) > 0);
		alarm[0] = 60 * 0.15;
	} else { prev = false; }
	if (abs(gamepad_axis_value(_id, gp_axislv) < 0) and (alarm[0] <= 0)) { 
		next = sign(gamepad_axis_value(_id, gp_axislv) < 0); 
		prev = !next;
		alarm[0] = 60 * 0.15;
	} else { next = false; }

	menu_move_y = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up) | keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))| gamepad_button_check_pressed(_id,gp_padd) - gamepad_button_check_pressed(_id,gp_padu) | prev - next;

	gamepad_set_axis_deadzone(_id,0.5);
	
	menu_index_y += menu_move_y;
	if (menu_index_y < 0) menu_index_y = buttons_y - 1;
	if (menu_index_y > buttons_y - 1) menu_index_y = 0;

	if (menu_index_y != last_selected_y) scr_one_channel_sound(snd_menuselect)

	last_selected_y = menu_index_y;
}