if global.global_stats.stage <= 6 {
	instance_create_layer(0,0,"Effects",obj_ending_transition);
}
else {
	instance_create_layer(0,0,"Effects",obj_gameover_transition);
}
instance_destroy();