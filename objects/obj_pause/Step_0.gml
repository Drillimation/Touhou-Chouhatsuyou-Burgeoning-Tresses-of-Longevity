scr_menu_input_pause();

if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(_id,gp_face1) {
	switch(menu_index_y) {
		case 0:
			audio_play_sound(snd_menuconfirm,1,false)
			instance_destroy();
			audio_stop_sound(global.bgm);
			instance_activate_all();
			ds_grid_destroy(global.highscores);
			ds_grid_destroy(global.spellcard_history);
			room_goto(room_title);
			break;
		case 1:
			audio_play_sound(snd_menuconfirm,1,false)
			instance_destroy();
			instance_activate_all();
			var a = layer_get_all_elements("Instances");
			for (var i = 0; i < array_length(a); i++;) {
				if layer_get_element_type(a[i]) == layerelementtype_sequence {
					layer_sequence_play(a[i]);
				}
			}
			audio_resume_sound(global.bgm);
			obj_control.paused = false;
			break;
	}
}
if keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(_id,gp_start) or gamepad_button_check_pressed(_id,gp_face2) {
	audio_play_sound(snd_pause,10,false);
	instance_destroy();
	instance_activate_all();
	var a = layer_get_all_elements("Instances");
	for (var i = 0; i < array_length(a); i++;) {
		if layer_get_element_type(a[i]) == layerelementtype_sequence {
			layer_sequence_play(a[i]);
		}
	}
	audio_resume_sound(global.bgm)
	obj_control.paused = false;
}