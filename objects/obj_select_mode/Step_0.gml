scr_menu_input();
//scr_menu_input_2d();

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) {
	audio_play_sound(snd_menuconfirm,10,false);
	switch(menu_index_y) {
		case 0: global.global_stats.freeplaymode = 0; global.global_stats.stage = 1; break;
		case 1: global.global_stats.freeplaymode = 0; global.global_stats.stage = 7; global.player_stats[0].pow = 100; global.player_stats[1].pow = 100; break;
		case 2: global.global_stats.freeplaymode = 1; global.global_stats.stage = 1; global.player_stats[0].pow = 100; global.player_stats[1].pow = 100; break;
	}
	instance_create_depth(0,0,0,obj_select_difficulty)
	instance_destroy();
}