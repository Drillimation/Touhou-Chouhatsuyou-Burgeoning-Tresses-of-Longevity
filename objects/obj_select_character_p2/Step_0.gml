if global.player_stats[1].player_active == 1 {
	scr_menu_input_2p()
}
else {
	scr_menu_input();
}
//scr_menu_input_2d();

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) or gamepad_button_check_pressed(1,gp_face1) {
	audio_play_sound(snd_menuconfirm,10,false);
	switch(menu_index_y) {
		case 0: if global.player_stats[0].character == "REIMU" { audio_play_sound(snd_buzzer,10,false) } else { global.player_stats[1].character = "REIMU"; confirmed = true; } break;
		case 1: if global.player_stats[0].character == "MARISA" { audio_play_sound(snd_buzzer,10,false) } else { global.player_stats[1].character = "MARISA"; confirmed = true; } break;
		case 2: if global.player_stats[0].character == "AYA" { audio_play_sound(snd_buzzer,10,false) } else { global.player_stats[1].character = "AYA"; confirmed = true; } break;
		case 3: if global.player_stats[0].character == "SANAE" { audio_play_sound(snd_buzzer,10,false) } else { global.player_stats[1].character = "SANAE"; confirmed = true; } break;
	}
	if confirmed == true {
		if global.global_stats.freeplaymode == 1 {
			instance_create_depth(0,0,0,obj_select_stage);
		}
		else {
			instance_create_depth(0,0,0,obj_how_to_play);
		}
		instance_destroy();
	}
}