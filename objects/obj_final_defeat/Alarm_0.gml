if global.global_stats.freeplaymode == 1 {
	instance_create_depth(0,0,0,obj_stage_clear);
}
else {
	instance_create_depth(0,0,0,obj_game_clear);
}