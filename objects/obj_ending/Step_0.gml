if layer_sequence_is_finished(_sequence) != 0 {
	layer_sequence_destroy(_sequence);
	instance_destroy();
	if global.continuesused == 0 {
		instance_create_depth(0,0,0,obj_credits_transition);
	}
	else {
		instance_create_depth(0,0,0,obj_gameover_transition);
	}
}