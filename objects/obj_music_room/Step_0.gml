scr_menu_input();
//scr_menu_input_2d();
if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) {
	audio_play_sound(snd_menuconfirm,10,false);
	scr_change_bgm(menu_index_y);
}

if keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face2) {
	audio_play_sound(snd_menucancel,10,false);
	room_goto(room_title);
}

if keyboard_check_pressed(ord("C")) or gamepad_button_check_pressed(0,gp_face3) {
	audio_play_sound(snd_menuconfirm,10,false);
	audio_stop_sound(global.bgm);
}