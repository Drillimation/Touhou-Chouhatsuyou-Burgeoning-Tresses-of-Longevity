if keyboard_check_pressed(vk_f1) or gamepad_button_check_pressed(0,gp_select) {
	audio_play_sound(snd_credit,10,false);
	global.credits += 1;

	wo_credits[0] = "CREDITS\n" + string(global.credits);
	wo_credits[1] = "INSERT\nCOIN"

	w_credits_1[0] = "CREDITS\n" + string(global.credits);
	w_credits_1[1] = "PUSH\n1P"

	w_credits_2[0] = "CREDITS\n" + string(global.credits);
	w_credits_2[1] = "PUSH\n2P"

	if room == room_arcade_title {
		room_goto(room_arcade_start);
	}
}

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

//Joining and continuing
if array_contains(pausable_room_list,room_get_name(room)) or global.global_stats.canjoin == 1 {
	if global.credits >= 1 {
		if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) or gamepad_button_check_pressed(0,gp_start) {
			if global.player_stats[0].player_active == 0 {
				global.credits -= 1;
				global.player_stats[0].player_active = 1;
				if array_contains(spawnable_room_list,room_get_name(room)) {
					instance_create_depth(view_xview + 64,view_yview + 208,0,obj_player_1);
					if instance_exists(obj_continue) {
						global.player_stats[0].player_score = round(((global.player_stats[0].player_score / 10) / 2)) * 10
						instance_destroy(obj_continue);
					}
				}
			}
			if room == room_arcade_start {
				scr_newgame_ext();
				room_goto(room_arcade_setup);
			}
		}
		if gamepad_button_check_pressed(1,gp_start) or gamepad_button_check_pressed(1,gp_face1) {
			if global.player_stats[1].player_active == 0 {
				global.credits -= 1;
				global.player_stats[1].player_active = 1;
				if array_contains(spawnable_room_list,room_get_name(room)) {
					instance_create_depth(view_xview + 192,view_yview + 208,0,obj_player_2);
					if instance_exists(obj_continue) {
						instance_create_depth(view_xview + 64,view_yview + 208,0,obj_player_1);
						global.player_stats[0].player_score = round(((global.player_stats[0].player_score / 10) / 2)) * 10
						global.player_stats[1].player_score = round(((global.player_stats[1].player_score / 10) / 2)) * 10
						instance_destroy(obj_continue);
					}
				}
			}
			if room == room_arcade_start {
				scr_newgame_ext();
				room_goto(room_arcade_setup);
			}
		}
	}
	
	//Pausing
	if !instance_exists(obj_continue) {
		if gamepad_is_connected(1) {
			who_can_pause = keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_start) or gamepad_button_check_pressed(1,gp_start)
		}
		else {
			who_can_pause = keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_start)
		}
		if who_can_pause {
			if paused == false {
				audio_play_sound(snd_pause,10,false);
				audio_pause_sound(global.bgm);
				paused = true;
				var a = layer_get_all_elements("Instances");
				for (var i = 0; i < array_length(a); i++;) {
					if layer_get_element_type(a[i]) == layerelementtype_sequence {
						layer_sequence_pause(a[i]);
					}
				}
				instance_deactivate_all(false);
				instance_activate_object(obj_display_manager);
				instance_activate_object(obj_resize);
				instance_activate_object(obj_border);
				if !instance_exists(obj_pause) {
					var inst = instance_create_depth(0,0,0,obj_pause);
					if gamepad_button_check(0,gp_start) or keyboard_check(vk_escape) {
						inst._id = 0;
					}
					if gamepad_button_check(1,gp_start) {
						inst._id = 1;
					}
					instance_activate_object(obj_pause);
				}
			}
			else {
				audio_resume_sound(global.bgm)
				paused = false;
				instance_destroy(obj_pause);
				instance_activate_all();
			}
		}
	}

	if !window_has_focus() and !instance_exists(obj_continue) {
		if paused == false {
			audio_play_sound(snd_pause,10,false);
			audio_pause_sound(global.bgm);
			paused = true;
			var a = layer_get_all_elements("Instances");
			for (var i = 0; i < array_length(a); i++;) {
				if layer_get_element_type(a[i]) == layerelementtype_sequence {
					layer_sequence_pause(a[i]);
				}
			}
			instance_deactivate_all(false);
			instance_activate_object(obj_display_manager);
			instance_activate_object(obj_resize);
			instance_activate_object(obj_border);
			if !instance_exists(obj_pause) {
				var inst = instance_create_depth(0,0,0,obj_pause);
				instance_activate_object(obj_pause);
			}
		}
		else {
			audio_resume_sound(global.bgm)
			paused = false;
			instance_destroy(obj_pause);
			instance_activate_all();
		}
	}
}

//Adding Bombs/Lives
if global.player_stats[0].player_score > global.highscore {
	global.highscore = global.player_stats[0].player_score;
}
if global.player_stats[1].player_score > global.highscore {
	global.highscore = global.player_stats[1].player_score;
}
if global.player_stats[0].player_score > global.player_stats[0].bombscore {
	if global.global_stats.breezy_mode == true {
		global.player_stats[0].bombs += 1;
		scr_one_channel_sound(snd_get_bomb);
	}
	else {
		global.player_stats[0].player_lives += 1;
		scr_one_channel_sound(snd_get_life);
	}
	global.player_stats[0].received += 1;
	global.player_stats[0].bombscore += global.player_stats[0].received * 100000;
}
if global.player_stats[1].player_score > global.player_stats[1].bombscore {
	if global.global_stats.breezy_mode == true {
		global.player_stats[1].bombs += 1;
		scr_one_channel_sound(snd_get_bomb);
	}
	else {
		global.player_stats[1].player_lives += 1;
		scr_one_channel_sound(snd_get_life);
	}
	global.player_stats[1].received += 1;
	global.player_stats[1].bombscore += global.player_stats[1].received * 100000;
}

//Supernatural Border
if global.global_stats.border >= 5000 {
	if !instance_exists(obj_supernatural_border) and layer_exists("Spell") {
		instance_create_layer(0,0,"Spell",obj_supernatural_border);
	}
}

//Fading Out the BGM
if bgm_fade == true {
	audio_sound_gain(global.bgm, 0, 1000);
	if alarm[2] < 0 {
		alarm[2] = 120;
	}
}