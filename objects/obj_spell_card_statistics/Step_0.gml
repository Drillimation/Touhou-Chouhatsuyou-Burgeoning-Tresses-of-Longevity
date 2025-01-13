scr_menu_input();
//scr_menu_input_2d();

scr_scroll_clamp_update(false,true,list_max_entries);

if keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face2) {
	audio_play_sound(snd_menucancel,10,false);
	ds_grid_destroy(global.spellcard_history);
	instance_create_depth(0,0,0,obj_options);
	instance_destroy();
}