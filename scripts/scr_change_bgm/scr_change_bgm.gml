function scr_change_bgm(_no){
	with(obj_bgm) {
		scr_json_load_file("main/soundtrack_loop_points.json","bgm_tracks",false);
		
		song = asset_get_index(bgm_tracks.soundtrack[_no][0]);
		loop_point = bgm_tracks.soundtrack[_no][1];
		end_of_song = bgm_tracks.soundtrack[_no][2];
		
		if !audio_is_playing(song) {
			audio_stop_sound(global.bgm);
			audio_sound_loop_start(song, loop_point);
			audio_sound_loop_end(song, end_of_song);
			global.bgm = audio_play_sound(song,10,true);
		}
	}
}