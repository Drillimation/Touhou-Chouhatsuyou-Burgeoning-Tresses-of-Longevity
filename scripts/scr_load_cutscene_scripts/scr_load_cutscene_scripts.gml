function scr_load_cutscene_scripts(){
	for(var i = 0; i < array_length(t_scene_info); i++) {
		if struct_exists(t_scene_info[i],"funct") {
			switch(t_scene_info[i].funct[0]) {
				case "scr_cutscene_stage_clear": t_scene_info[i].funct[0] = scr_cutscene_stage_clear; break;
				case "scr_cutscene_game_clear": t_scene_info[i].funct[0] = scr_cutscene_game_clear; break;
			}
		}
	}
}