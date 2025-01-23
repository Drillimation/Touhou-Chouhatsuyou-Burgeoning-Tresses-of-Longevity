switch(global.stage) {
	case 1: stage_speed = 0.5; path_start(path_scroll,stage_speed,path_action_stop,true); break
	case 2: stage_speed = 0.5; path_start(path_scroll,stage_speed,path_action_stop,true); break
	case 3: stage_speed = 0.5; path_start(path_scroll,stage_speed,path_action_stop,true); break
	case 4: stage_speed = 0.5; path_start(path_scroll,stage_speed,path_action_stop,true); break
	case 5: stage_speed = 0.5; path_start(path_scroll,stage_speed,path_action_stop,true); break
	case 6: stage_speed = 1; path_start(path_scroll_2,stage_speed,path_action_stop,true); break
	case 7: stage_speed = 0.375; path_start(path_scroll_3,stage_speed,path_action_stop,true); break
}
switch(global.character[0]) {
	case "REIMU": _char = "reimu"; break;
	case "MARISA": _char = "marisa"; break;
	case "SAKUYA": _char = "sakuya"; break;
	case "YOUMU": _char = "youmu"; break;
}