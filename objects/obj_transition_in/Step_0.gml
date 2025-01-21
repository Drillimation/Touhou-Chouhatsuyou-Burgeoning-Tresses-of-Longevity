if layer_sequence_is_finished(_sequence) != 0 {
	layer_sequence_destroy(_sequence);
	instance_destroy();
	switch(global.stage) {
		case 1: room_goto(room_transition_1); break;
		case 2: room_goto(room_transition_2); break;
		case 3: room_goto(room_transition_3); break;
		case 4: room_goto(room_transition_4); break;
		case 5: room_goto(room_transition_5); break;
		case 6: room_goto(room_transition_6); break;
		case 7: room_goto(room_transition_7); break;
	}
}