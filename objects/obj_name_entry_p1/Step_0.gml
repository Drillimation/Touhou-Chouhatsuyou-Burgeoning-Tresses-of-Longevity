scr_menu_input();
scr_menu_input_2d();

if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_numpad2) or gamepad_button_check_pressed(0,gp_face1) {
	if string_length(p1_name) < 10 {
		audio_play_sound(snd_menuconfirm,1,false)
		p1_name += button[menu_index_y][menu_index_x];
	} 
	else {
		audio_play_sound(snd_buzzer,1,false)
	}
}

if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_numpad6) or gamepad_button_check_pressed(0,gp_face2) {
	audio_play_sound(snd_menucancel,1,false)
	p1_name = string_delete(p1_name, string_length(p1_name), 1);
}

if keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_start) {
	global.highscores[# 0,9] = p1_name;
	global.highscores[# 1,9] = global.player_stats[0].player_score;
	global.highscores[# 2,9] = global.global_stats.stage;
	global.highscores[# 3,9] = global.player_stats[0].character;
	ds_grid_sort(global.highscores,1,false);
	
	var _j = {
		default_table : array_create(ds_grid_height(global.highscores))
	}
	
	for(var i = 0; i < 10; i++) {
		_j.default_table[i] = {
			name : global.highscores[# 0,9],
			score : global.highscores[# 1,9],
			stage : global.highscores[# 2,9],
			char : global.highscores[# 3,9]
		}
	}
	scr_json_save_file(_j,"highscores.save");
	
	if global.player_stats[1].player_score > global.highscores[# 1,9] {
		instance_create_depth(0,0,0,obj_name_entry_p2);
	}
	else {
		global.player_stats[0].player_active = 0;
		global.player_stats[1].player_active = 0;
		instance_create_depth(0,0,0,obj_gameover);
	}
	instance_destroy();
}