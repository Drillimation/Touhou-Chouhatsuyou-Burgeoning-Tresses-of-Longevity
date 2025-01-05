function scr_change_language(){
	switch(global.game_options.language) {
		case 0:
			global.suf = "_en"
			global.font[0] = font_ms_gothic;
			global.font[1] = font_chicago;
			break;
		case 1:
			global.suf = "_jp"
			global.font[0] = font_ms_gothic;
			global.font[1] = font_ms_gothic;
			break;
	}
}