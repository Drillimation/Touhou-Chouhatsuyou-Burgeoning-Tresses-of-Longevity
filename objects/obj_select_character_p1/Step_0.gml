scr_menu_input();
//scr_menu_input_2d();

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) {
	audio_play_sound(snd_menuconfirm,10,false);
	switch(menu_index_y) {
		case 0: global.player_stats[0].character = "REIMU"; break;
		case 1: global.player_stats[0].character = "MARISA"; break;
		case 2: global.player_stats[0].character = "AYA"; break;
		case 3: global.player_stats[0].character = "SANAE"; break;
	}
	instance_create_depth(0,0,0,obj_select_character_2p)
	instance_destroy();
}