/*switch(global.stage) {
	case 1: stage_speed = 0.5; path_start(path_scroll,stage_speed,path_action_stop,true); break
	case 2: stage_speed = 0.5; path_start(path_scroll,stage_speed,path_action_stop,true); break
	case 3: stage_speed = 0.5; path_start(path_scroll,stage_speed,path_action_stop,true); break
	case 4: stage_speed = 0.5; path_start(path_scroll,stage_speed,path_action_stop,true); break
	case 5: stage_speed = 0.5; path_start(path_scroll,stage_speed,path_action_stop,true); break
	case 6: stage_speed = 1; path_start(path_scroll_2,stage_speed,path_action_stop,true); break
	case 7: stage_speed = 0.375; path_start(path_scroll_3,stage_speed,path_action_stop,true); break
}*/
stage_speed = 0.5;
end_path_function = "NOTHING";
midboss = obj_enemy;
midboss_sprite = spr_mayu;

switch(global.player_stats[0].character) {
	case "REIMU": _char = "reimu"; break;
	case "MARISA": _char = "marisa"; break;
	case "AYA": _char = "aya"; break;
	case "SANAE": _char = "sanae"; break;
}

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);