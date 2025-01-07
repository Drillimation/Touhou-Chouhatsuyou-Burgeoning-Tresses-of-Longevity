scr_menu_input();
//scr_menu_input_2d();

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) {
	audio_play_sound(snd_menuconfirm,10,false);
	switch(menu_index_y) {
		case 0: /*audio_stop_sound(global.bgm); room_goto(room_start);*/ break;
		case 1: /*room_goto(room_music_room);*/ break;
		case 2: room_goto(room_options); break;
		case 3: url_open_ext("https://github.com/Drillimation/Touhou-Chouhatsuyou-Burgeoning-Tresses-of-Longevity/", "_blank"); break;
		case 4: url_open_ext("https://drillipedia.fandom.com/", "_blank"); break;
		case 5: game_end(); break;
	}
}