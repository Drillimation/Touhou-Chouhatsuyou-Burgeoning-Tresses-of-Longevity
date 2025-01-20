scr_menu_input();
//scr_menu_input_2d();

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) {
	audio_play_sound(snd_menuconfirm,10,false);
	global.global_stats.difficulty = menu_index_y;
	instance_create_depth(0,0,0,obj_select_type)
	instance_destroy();
}