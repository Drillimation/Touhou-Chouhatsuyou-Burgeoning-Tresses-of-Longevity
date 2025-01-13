scr_menu_input();
//scr_menu_input_2d();

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) {
	audio_play_sound(snd_menuconfirm,10,false);
	switch (menu_index_y) {
		case 0: instance_destroy(); instance_create_depth(0,0,0,obj_bgm_volume); break;
		case 1: instance_destroy(); instance_create_depth(0,0,0,obj_sfx_volume); break;
		case 2: scr_toggle_fullscreen(); break;
		case 3: instance_destroy(); instance_create_depth(0,0,0,obj_language_select); break;
		case 4: instance_destroy(); instance_create_depth(0,0,0,obj_border_brightness); break;
		case 5: instance_destroy(); instance_create_depth(0,0,0,obj_spell_card_statistics); break;
	}
}

if keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face2) {
	audio_play_sound(snd_menucancel,10,false);
	room_goto(room_title);
	instance_destroy();
}