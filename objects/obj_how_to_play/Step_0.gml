if layer_sequence_is_finished(_sequence) != 0 or keyboard_check_pressed(vk_anykey) {
	layer_sequence_destroy(_sequence);
	instance_destroy();
	instance_create_depth(0,0,0,obj_transition_in);
}