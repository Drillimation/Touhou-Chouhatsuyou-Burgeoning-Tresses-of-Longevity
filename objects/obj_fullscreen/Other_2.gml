global.current_bgm = "noone";
game_set_speed(60, gamespeed_fps);

if !file_exists("options.save") {
	global.game_options = {
		language : 0,
		bgm_volume : 0.8,
		sfx_volume : 0.8,
		fullscreen : 1,
		border_brightness : 1
	}
	scr_change_language();
}
else {
	scr_json_load_file("options.save","game_options",true);
	scr_change_language();
}
audio_group_load(audiogroup_default);
audio_group_load(bgm);
audio_group_set_gain(bgm,global.game_options.bgm_volume,0);
audio_group_set_gain(audiogroup_default,global.game_options.sfx_volume,0);

/*switch(global.game_options.fullscreen) {
	case 0: window_set_fullscreen(false); break;
	case 1: window_set_fullscreen(true); break;
}*/