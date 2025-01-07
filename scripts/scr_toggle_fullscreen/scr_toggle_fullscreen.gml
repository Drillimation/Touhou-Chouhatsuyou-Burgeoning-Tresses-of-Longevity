function scr_toggle_fullscreen(){
	switch(global.game_options.fullscreen) {
		case 0: window_set_fullscreen(true); global.game_options.fullscreen = 1; break;
		case 1: window_set_fullscreen(false); global.game_options.fullscreen = 0; break;
	}
	scr_json_save_file(global.game_options,"options.save");
	
	projection_x = display_get_width();
	projection_y = display_get_height();
	global.windowwidth = 640 * floor(projection_x / 640);
	global.windowheight = 360 * floor(projection_y / 360);
	
	if global.game_options.fullscreen == 1 {
		instance_create_depth(0,0,0,obj_display_manager);
		surface_resize(application_surface,global.windowwidth,global.windowheight)
	}
	else {
		global.windowwidth -= 640
		global.windowheight -= 360
		instance_destroy(obj_display_manager);
		instance_create_depth(0,0,0,obj_resize);
		window_set_size(global.windowwidth,global.windowheight);
		window_center();
	}
}