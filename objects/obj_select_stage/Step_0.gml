scr_menu_input();
scr_menu_input_2d();

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) {
	audio_play_sound(snd_menuconfirm,10,false);
	switch(menu_index_x) {
		case 0: 
			switch(menu_index_y) {
				case 0: global.global_stats.stage = 1; break;
				case 1: global.global_stats.stage = 2; break;
				case 2: global.global_stats.stage = 3; break;
			}
			break;
		case 1: 
			switch(menu_index_y) {
				case 0: global.global_stats.stage = 4; break;
				case 1: global.global_stats.stage = 5; break;
				case 2: global.global_stats.stage = 6; break;
			}
			break;
	}
	instance_create_depth(0,0,0,obj_how_to_play);
	instance_destroy();
}