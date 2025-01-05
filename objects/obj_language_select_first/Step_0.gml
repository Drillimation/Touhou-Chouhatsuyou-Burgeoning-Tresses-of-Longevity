scr_menu_input();
//scr_menu_input_2d();

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) {
	audio_play_sound(snd_menuconfirm,10,false);
	
	global.game_options.language = menu_index_y;
	scr_json_save_file(global.game_options,"options.save");
	
	scr_change_language();
	room_goto(room_intro)
	instance_destroy();
}